//
//  MatchPostModel+.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/18/26.
//

import Foundation

extension MatchPostModel {
    static func makePriceText(
        priceType: PostPriceType,
        displayPrice: Int?,
        includesCurrencyUnit: Bool = true
    ) -> String {
        guard priceType != .free, let displayPrice else { return "" }

        let price = displayPrice.formatted(.number.locale(Locale(identifier: "ko_KR")))
        return includesCurrencyUnit ? "\(price)원" : price
    }

    static func makeAvailableTimeText(
        from availableTimes: [PostAvailableTime]
    ) -> String {
        availableTimes.map { time in
            switch time {
            case .weekdayMorning: "평일 오전"
            case .weekdayAfternoon: "평일 오후"
            case .anytime: "시간 상관없음"
            }
        }.joined(separator: ", ")
    }

    static func makeTreatmentTags(from treatmentTypes: [PostTreatmentType]) -> [String] {
        treatmentTypes.map { treatment in
            switch treatment {
            case .cut: "컷트"
            case .perm: "펌"
            case .clinic: "클리닉"
            case .colored: "염색"
            case .straight: "매직"
            case .extensionHair: "붙임머리"
            }
        }
    }
}
