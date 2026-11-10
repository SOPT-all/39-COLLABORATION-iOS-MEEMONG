//
//  CustomTapVIew.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

enum MainTab {
    case home
}

struct CustomTabView: View {
    
    @Binding var selectedTab: MainTab

    var body: some View {
    
        HStack(spacing: 0) {
            Button {
                selectedTab = .home
            } label: {
                VStack(spacing: 4){
                    Image(.iconsHome)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    
                    Text("홈")
                        .font(.cap2_medium)
                        .foregroundStyle(.gray950)
                }
            }
            
           Spacer()
            
            Button {
            } label: {
                VStack(spacing: 4){
                    Image(.iconsPromotion)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    
                    Text("리뷰특가")
                        .font(.cap2_medium)
                        .foregroundStyle(.gray700)
                }
            }
            
            Spacer()
             
             Button {
             } label: {
                 VStack(spacing: 4){
                     Image(.iconsConsultingM)
                         .foregroundStyle(.gray950)
                         .scaledToFit()
                         .frame(width: 24, height: 24)
                     
                     Text("컨설팅")
                         .font(.cap2_medium)
                         .foregroundStyle(.gray700)
                 }
             }
            
            Spacer()
             
             Button {
             } label: {
                 VStack(spacing: 4){
                     Image(.iconsChat)
                         .resizable()
                         .scaledToFit()
                         .frame(width: 24, height: 24)
                     
                     Text("채팅")
                         .font(.cap2_medium)
                         .foregroundStyle(.gray700)
                 }
             }
            
            Spacer()
             
             Button {
             } label: {
                 VStack(spacing: 4){
                     Image(.iconsProfile)
                         .resizable()
                         .scaledToFit()
                         .frame(width: 24, height: 24)
                     
                     Text("프로필")
                         .font(.cap2_medium)
                         .foregroundStyle(.gray700)
                 }
             }
        }
        .padding(.top, 8)
        .padding(.bottom, 36)
        .padding(.horizontal,31.5)
        .frame(maxWidth: .infinity)
        .frame(height: 89)
        .background(.white)
        .overlay(alignment: .top) {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray300)
        }
    }
}

#Preview {
    CustomTabView(selectedTab: .constant(.home))
}
