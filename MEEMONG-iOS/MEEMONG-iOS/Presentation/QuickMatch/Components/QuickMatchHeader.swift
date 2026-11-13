//
//  QuickMatchHeader.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchHeader: View {
    @Binding var selectedType: MemberType

    var body: some View {
        HStack {
            TabToggleButton(selectedType: $selectedType)

            Spacer()

            Image(.iconsAdjustments)
                .frame(width: 24, height: 24)
                .padding(4)
                .background(.meemongWhite, in: RoundedRectangle(cornerRadius: 8))
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(.gray100, lineWidth: 1)
                }
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 8)
        .background(.meemongWhite)
    }
}
