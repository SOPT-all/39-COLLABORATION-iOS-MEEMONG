//
//  FloatingButtonView.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingButton: View {
    enum Menu {
        case home
        case quickMatch
    }

    var menu: Menu = .home
    private let bottomPadding: CGFloat = 116
    @State private var isSelected = false

    var body: some View {
        ZStack(alignment: .bottomTrailing){
            if isSelected {
                Color.clear
                    .contentShape(Rectangle())
                    .onTapGesture {
                        isSelected = false
                    }
            }

            VStack(alignment: .trailing, spacing: 12){
                if isSelected {
                    switch menu {
                    case .home:
                        FloatingHomeMenu()
                    case .quickMatch:
                        FloatingQuickMatchMenu()
                    }
                }

                FloatingToggleButton(isSelected: $isSelected)
            }
        }
        .padding(.trailing, 20)
        .padding(.bottom, bottomPadding)
    }
}
