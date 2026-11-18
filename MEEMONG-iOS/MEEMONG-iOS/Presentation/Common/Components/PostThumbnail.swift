//
//  PostThumbnail.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/18/26.
//

import Kingfisher
import SwiftUI

struct PostThumbnail: View {
    let post: MatchPostModel

    var body: some View {
        Group {
            if post.isRemotePost {
                KFImage(post.thumbnailURL)
                    .placeholder {
                        Image(.matchPlaceholder)
                            .resizable()
                            .scaledToFill()
                    }
                    .resizable()
                    .scaledToFill()
            } else {
                Image(post.image).resizable().scaledToFill()
            }
        }
        .frame(width: 92, height: 92)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

struct PostLikeIndicator: View {
    let isLiked: Bool

    var body: some View {
        Image(isLiked ? .statusSelected : .defaultWhite)
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .accessibilityLabel(isLiked ? "찜한 공고" : "찜하지 않은 공고")
    }
}
