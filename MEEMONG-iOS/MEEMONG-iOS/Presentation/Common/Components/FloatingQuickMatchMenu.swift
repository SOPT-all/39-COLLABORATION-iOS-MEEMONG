//
//  FloatingQuickMatchMenu.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingQuickMatchMenu: View {
    var body: some View {
        VStack(spacing: 0){
            Button{
            } label: {
                HStack(spacing: 4){
                    Image(.iconsAnnouncement)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text("일반공고")
                        .font(.body2_medium)
                        .foregroundStyle(.white)
                }
            }
            .padding(.leading, 12)
            .frame(width: 102, height: 40, alignment: .leading)
            
            Button{
            } label: {
                HStack(spacing: 4){
                    Image(.iconsRecommend)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text("미몽추천")
                        .font(.body2_medium)
                        .foregroundStyle(.white)
                }
            }
            .padding(.leading, 12)
            .frame(width: 102, height: 40, alignment: .leading)
        }
        .background(.gray900)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(radius: 5.7)
    }
}

#Preview {
    FloatingQuickMatchMenu()
}
