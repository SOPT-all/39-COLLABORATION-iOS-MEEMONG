//
//  QuickMatchDesignerView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchDesignerView: View {
    var data: DesignerMatchModel = .sample

    var body: some View {
        QuickMatchPostList(
            recommendedPosts: data.recommendedPosts,
            normalPosts: data.normalPosts
        )
    }
}
