//
//  MatchDetailView.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct MatchDetailView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                ImageCarousel()
                DesignerProfileRow()
                ServiceInfoBox()
                MatchDetailTabbar()
            }
        }
        .ignoresSafeArea(edges: .top)
        .safeAreaInset(edge: .bottom) {
            ReservationButton()
        }
    }
}
