//
//  NetworkLogger.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import Foundation

final class NetworkLogger {
    static let shared = NetworkLogger()
    private init() {}

    static func requestLog(request: URLRequest) {
        print("\n🌈 Request 🌈")

        let url = request.url?.absoluteString ?? "URL None"
        let method = request.httpMethod ?? "Method None"
        var output = """
        url: \(url)
        method: \(method)

        """

        for (key, value) in request.allHTTPHeaderFields ?? [:] {
            let sensitiveHeaders = [
                "authorization",
                "proxy-authorization",
                "cookie",
                "x-api-key"
            ]
            let displayValue = sensitiveHeaders.contains(key.lowercased())
                ? "[REDACTED]"
                : value
            output += "\(key): \(displayValue)\n"
        }

        if let body = request.httpBody {
            output += "\nBody: \(String(data: body, encoding: .utf8) ?? "")"
        }

        print("\(output)\n")
    }

    static func responseLog(response: HTTPURLResponse?, data: Data?) {
        print("\n⛑️ Response ⛑️")

        var output = ""
        if let statusCode = response?.statusCode {
            output += "StatusCode: \(statusCode)"
        }
        if let data {
            output += "\nBody: \(String(data: data, encoding: .utf8) ?? "")"
        }

        print("\(output)\n")
    }

    static func errorLog(error: Error) {
        print("\n❌ Network Error ❌")
        print("\(error.localizedDescription)\n")
    }
}
