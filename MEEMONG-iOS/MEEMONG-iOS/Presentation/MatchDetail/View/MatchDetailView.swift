//
//  MatchDetailView.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct MatchDetailView: View {
    @State private var viewModel = MatchDetailViewModel()
    let postId: Int64
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                if let matchDetail = viewModel.matchDetail{
                    ImageCarousel(imageUrls: matchDetail.imageURLs)
                    DesignerProfileRow(matchDetail: matchDetail)
                    ServiceInfoBox(matchDetail: matchDetail)
                    MatchDetailTabbar(matchDetail: matchDetail)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .toolbar(.hidden, for: .navigationBar)
        .safeAreaInset(edge: .bottom) {
            ReservationButton()
        }
        .task(id: postId) {
            await viewModel.loadMatchDetail(postId: postId)
        }
    }
}
