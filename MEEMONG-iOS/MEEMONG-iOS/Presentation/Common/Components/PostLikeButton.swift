//
//  PostLikeButton.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/19/26.
//

import SwiftUI

struct PostLikeButton: View {
    let isLiked: Bool
    var isUpdating = false
    var unselectedImage: ImageResource = .defaultWhite
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(isLiked ? .statusSelected : unselectedImage)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .disabled(isUpdating)
        .accessibilityLabel(isLiked ? "찜 취소" : "찜 등록")
    }
}
