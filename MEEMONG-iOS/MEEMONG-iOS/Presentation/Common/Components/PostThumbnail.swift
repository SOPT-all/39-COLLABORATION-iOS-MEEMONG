//
//  PostThumbnail.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/18/26.
//

import SwiftUI

import Kingfisher

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
