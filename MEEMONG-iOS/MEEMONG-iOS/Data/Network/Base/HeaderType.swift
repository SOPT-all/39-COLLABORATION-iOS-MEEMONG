//
//  HTTPMethodType.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

enum HeaderType {
    case basic

    var value: [String: String] {
        switch self {
        case .basic:
            return [
                "Accept": "application/json",
                "Content-Type": "application/json"
            ]
        }
    }
}
