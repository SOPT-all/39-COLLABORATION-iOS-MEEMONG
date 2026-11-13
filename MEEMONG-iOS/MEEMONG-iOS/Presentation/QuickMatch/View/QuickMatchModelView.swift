//
//  QuickMatchModelView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchModelView: View {
    var data: ModelMatchModel = .sample

    var body: some View {
        QuickMatchPostList(
            recommendedPosts: data.recommendedPosts,
            normalPosts: data.normalPosts
        )
    }
}
