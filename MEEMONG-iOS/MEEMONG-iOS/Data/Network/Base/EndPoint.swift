//
//  HTTPMethodType.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import Foundation

enum EndPoint {
    case recommendedPosts
    case generalPosts
    case postDetail(Int64)
    case designerDetail(Int64)
    case like(Int64)
    case unlike(Int64)

    var url: String {
        switch self {
        case .recommendedPosts:
            return "/api/v1/posts/recommended"
        case .generalPosts:
            return "/api/v1/posts/general"
        case .postDetail(let postID):
            return "/api/v1/posts/\(postID)"
        case .designerDetail(let postID):
            return "/api/v1/posts/\(postID)/designer"
        case .like(let postID), .unlike(let postID):
            return "/api/v1/posts/\(postID)/likes"
        }
    }

    var requestType: HTTPMethodType {
        switch self {
        case .recommendedPosts, .generalPosts, .postDetail, .designerDetail:
            return .get
        case .like:
            return .put
        case .unlike:
            return .delete
        }
    }
    var queryItems: [URLQueryItem] { [] }

    var header: [String: String] {
        HeaderType.basic.value
    }
}
