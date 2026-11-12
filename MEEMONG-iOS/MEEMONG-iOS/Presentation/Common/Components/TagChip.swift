//
//  TagChip.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct TagChip: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.cap1_medium)
            .foregroundStyle(.gray600)
            .padding(.horizontal, 7)
            .frame(height: 24)
            .background(.gray100, in: Capsule())
    }
}
