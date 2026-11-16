//
//  HTTPMethodType.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import Foundation

enum NetworkError: LocalizedError {
    case urlError
    case httpURLResponseError
    case responseDecodingError(Error)
    case noData
    case requestEncodingError
    case httpError(statusCode: Int, code: String?)
    case serverError(code: String)
    case transportError(Error)

    var serverCode: String? {
        switch self {
        case .httpError(_, let code):
            return code
        case .serverError(let code):
            return code
        default:
            return nil
        }
    }

    var errorDescription: String? {
        switch self {
        case .urlError:
            return "서버 주소를 확인할 수 없습니다."
        case .httpURLResponseError:
            return "올바른 HTTP 응답이 아닙니다."
        case .responseDecodingError:
            return "서버 응답을 해석할 수 없습니다."
        case .noData:
            return "응답 데이터가 없습니다."
        case .requestEncodingError:
            return "요청 데이터를 변환할 수 없습니다."
        case .httpError(let status, let code):
            return "요청에 실패했습니다. HTTP \(status), \(code ?? "UNKNOWN")"
        case .serverError(let code):
            return "서버 요청에 실패했습니다. \(code)"
        case .transportError:
            return "서버에 연결할 수 없습니다."
        }
    }
}
