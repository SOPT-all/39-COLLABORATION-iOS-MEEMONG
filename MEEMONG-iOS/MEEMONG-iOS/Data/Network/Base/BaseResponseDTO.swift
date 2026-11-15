//
//  HTTPMethodType.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

struct BaseResponseDTO<T: Decodable>: Decodable {
    let code: String
    let data: T?
}

struct APIErrorResponseDTO: Decodable {
    let code: String
}
