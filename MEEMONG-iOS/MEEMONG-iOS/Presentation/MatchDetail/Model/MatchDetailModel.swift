//
//  MatchDetailModel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/18/26.
//

import SwiftUI

enum PriceType: String {
    case review = "REVIEW"
    case free = "FREE"
    case negotiable = "NEGOTIABLE"
    
    var typetitle: String {
        switch self {
        case .review:
            return "리뷰특가"
        case .free:
            return "무료시술"
        case .negotiable:
            return "재료비발생"
        }
    }
}

enum TreatmentType: String {
    case cut = "CUT"
    case perm = "PERM"
    case clinic = "CLINIC"
    case colored = "COLORED"
    case straight = "STRAIGHT"
    case hairextension = "EXTENSION"
    
    var typetitle: String {
        switch self {
        case .cut:
            return "커트"
        case .perm:
            return "펌"
        case .clinic:
            return "클리닉"
        case .colored:
            return "염색"
        case .straight:
            return "매직"
        case .hairextension:
            return "붙임머리"
        }
    }
}
 
enum ShootingRanges: String {
    case face_exposure = "FACE_EXPOSURE"
    case video = "VIDEO"
    case photo = "PHOTO"
    
    var typetitle: String {
        switch self {
        case .face_exposure:
            return "얼굴 노출"
        case .video:
            return "영상"
        case .photo:
            return "사진"
        }
    }
}
