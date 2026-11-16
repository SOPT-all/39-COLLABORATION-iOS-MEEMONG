//
//  HTTPMethodType.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import Foundation

final class BaseService {
    static let shared = BaseService()

    private let session: URLSession
    private let baseURLProvider: () -> String?

    private convenience init() {
        self.init(session: .shared) {
            Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String
        }
    }

    // 테스트에서는 모의 URLSession과 서버 주소를 전달할 수 있습니다.
    init(session: URLSession, baseURLProvider: @escaping () -> String?) {
        self.session = session
        self.baseURLProvider = baseURLProvider
    }

    func request<Response: Decodable>(
        endPoint: EndPoint,
        body: (any Encodable)? = nil
    ) async throws -> Response {
        let request = try makeRequest(endPoint: endPoint, body: body)
        NetworkLogger.requestLog(request: request)
        return try await requestToResponse(request: request)
    }
}

private extension BaseService {
    func makeRequest(endPoint: EndPoint, body: (any Encodable)?) throws -> URLRequest {
        guard let address = baseURLProvider(),
              let baseURL = URL(string: address),
              baseURL.scheme == "https", baseURL.host != nil,
              var components = URLComponents(
                url: baseURL.appendingPathComponent(endPoint.url),
                resolvingAgainstBaseURL: false
              ) else {
            throw NetworkError.urlError
        }
        if !endPoint.queryItems.isEmpty {
            components.queryItems = endPoint.queryItems
        }
        guard let url = components.url else {
            throw NetworkError.urlError
        }

        var request = URLRequest(url: url)
        request.cachePolicy = .reloadIgnoringLocalCacheData
        request.timeoutInterval = 30
        request.httpMethod = endPoint.requestType.key
        request.allHTTPHeaderFields = endPoint.header
        if let body {
            request.httpBody = try makeRequestBody(data: body)
        }
        return request
    }

    func makeRequestBody<Body: Encodable>(data: Body) throws -> Data {
        do {
            return try JSONEncoder().encode(data)
        } catch {
            throw NetworkError.requestEncodingError
        }
    }

    func requestToResponse<Response: Decodable>(request: URLRequest) async throws -> Response {
        let data: Data
        let response: URLResponse
        do {
            (data, response) = try await session.data(for: request)
        } catch {
            NetworkLogger.errorLog(error: error)
            if error is CancellationError { throw error }
            if let error = error as? URLError, error.code == .cancelled {
                throw CancellationError()
            }
            throw NetworkError.transportError(error)
        }
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.httpURLResponseError
        }
        NetworkLogger.responseLog(response: httpResponse, data: data)

        guard (200..<300).contains(httpResponse.statusCode) else {
            let errorResponse = try? JSONDecoder().decode(APIErrorResponseDTO.self, from: data)
            throw NetworkError.httpError(
                statusCode: httpResponse.statusCode,
                code: errorResponse?.code
            )
        }

        let decoded: BaseResponseDTO<Response>
        do {
            decoded = try JSONDecoder().decode(BaseResponseDTO<Response>.self, from: data)
        } catch {
            throw NetworkError.responseDecodingError(error)
        }
        guard decoded.code == "SUCCESS" else {
            throw NetworkError.serverError(code: decoded.code)
        }
        guard let result = decoded.data else {
            throw NetworkError.noData
        }
        return result
    }
}
