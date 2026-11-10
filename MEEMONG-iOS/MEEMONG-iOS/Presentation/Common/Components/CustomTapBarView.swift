//
//  CustomTapVIew.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

enum MainTab : CaseIterable {
    case home
    case review
    case consulting
    case chating
    case profile
    
    var iconName: ImageResource {
        switch self {
        case .home : .iconsHome
        case .review : .iconsPromotion
        case .consulting : .iconsChat
        case .chating : .iconsConsultingM
        case .profile: .iconsProfile
        }
    }
    
    var title: String {
        switch self {
        case .home : "홈"
        case .review : "리뷰특가"
        case .consulting : "컨설팅"
        case .chating : "채팅"
        case .profile : "프로필"
        }
    }
}

struct CustomTabBarView: View {
    @Binding var selectedTab: MainTab
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(MainTab.allCases, id: \.self){ tab in
                Button {
                    selectedTab = .home
                } label: {
                    VStack(spacing: 4){
                        Image(tab.iconName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Text(tab.title)
                            .font(.cap2_medium)
                            .foregroundStyle(.gray950)
                    }
                }
                
                switch tab {
                case .profile :
                    EmptyView()
                default :
                    Spacer()
                }
            }
        }
        .padding(.top, 8)
        .padding(.bottom, 36)
        .padding(.horizontal,25)
        .frame(maxWidth: .infinity)
        .frame(height: 94)
        .background(.white)
        .overlay(alignment: .top) {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray300)
        }
    }
        
    
}
