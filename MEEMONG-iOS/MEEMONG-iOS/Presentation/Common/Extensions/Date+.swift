//
//  Date+.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/19/26.
//

import Foundation

extension Date {
    init(iso8601String: String) throws {
        let parser = ISO8601DateFormatter()
        parser.formatOptions = [.withInternetDateTime, .withFractionalSeconds]

        if let date = parser.date(from: iso8601String) {
            self = date
            return
        }

        self = try Date(iso8601String, strategy: .iso8601)
    }

    func relativeDisplayText(now: Date = .now) -> String {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(identifier: "Asia/Seoul") ?? .current

        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.timeZone = calendar.timeZone

        let yesterday = calendar.date(byAdding: .day, value: -1, to: now)

        if calendar.isDate(self, inSameDayAs: now) {
            formatter.dateFormat = "a hh:mm"
        } else if let yesterday, calendar.isDate(self, inSameDayAs: yesterday) {
            return "어제"
        } else {
            formatter.dateFormat = "MM월 dd일"
        }

        return formatter.string(from: self)
    }
}
