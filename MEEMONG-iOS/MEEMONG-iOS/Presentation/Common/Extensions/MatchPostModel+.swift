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

    static func makePostDate(from createdAt: String) throws -> Date {
        let parser = ISO8601DateFormatter()
        parser.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

        if let date = parser.date(from: createdAt) {
            return date
        }

        return try Date(createdAt, strategy: .iso8601)
    }

    static func makePostedAtText(from createdAt: String, now: Date = .now) -> String {
        guard let date = try? makePostDate(from: createdAt) else { return "" }

        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(identifier: "Asia/Seoul") ?? .current

        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.timeZone = calendar.timeZone

        let yesterday = calendar.date(byAdding: .day, value: -1, to: now)

        if calendar.isDate(date, inSameDayAs: now) {
            formatter.dateFormat = "a hh:mm"
        } else if let yesterday, calendar.isDate(date, inSameDayAs: yesterday) {
            return "어제"
        } else {
            formatter.dateFormat = "MM월 dd일"
        }

        return formatter.string(from: date)
    }
}
