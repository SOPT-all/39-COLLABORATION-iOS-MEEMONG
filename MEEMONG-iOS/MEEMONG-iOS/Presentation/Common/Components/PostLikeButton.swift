//
//  PostLikeButton.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/19/26.
//

import SwiftUI

struct PostLikeButton: View {
    enum Size: CGFloat {
        case small = 20
        case large = 24
    }

    let isLiked: Bool
    var isUpdating = false
    var unselectedImage: ImageResource = .defaultWhite
    var size: Size = .small
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(isLiked ? .statusSelected : unselectedImage)
                .resizable()
                .scaledToFit()
                .frame(width: size.rawValue, height: size.rawValue)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .disabled(isUpdating)
        .accessibilityLabel(isLiked ? "찜 취소" : "찜 등록")
    }
}
