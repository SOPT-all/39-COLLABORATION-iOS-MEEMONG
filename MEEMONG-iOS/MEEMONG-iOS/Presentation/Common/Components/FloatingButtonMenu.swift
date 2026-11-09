//
//  FloatingButton.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingButtonMenu: View {
    
    var body: some View {
        
        VStack(spacing: 0){
            Button{
            } label: {
                HStack(spacing: 4){
                    Image(.iconsMatching)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text("빠른매칭")
                        .font(.body2_medium)
                        .foregroundStyle(.white)
                }
            }
            .padding(.leading, 12)
            .frame(width: 102, height: 40, alignment: .leading)
            
            Button{
            } label: {
                HStack(spacing: 4){
                    Image(.iconsSponsorship)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text("협찬신청")
                        .font(.body2_medium)
                        .foregroundStyle(.white)
                }
            }
            .padding(.leading, 12)
            .frame(width: 102, height: 40, alignment: .leading)
            
            Button{
            } label: {
                HStack(spacing: 4){
                    Image(.iconsConsultingS)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                    
                    Text("헤어컨설팅")
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
    FloatingButtonMenu()
}
