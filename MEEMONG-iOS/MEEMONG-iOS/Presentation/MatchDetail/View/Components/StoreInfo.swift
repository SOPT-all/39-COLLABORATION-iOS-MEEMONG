//
//  StoreInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/13/26.
//

import SwiftUI

struct StoreInfo: View {
    let images: [ImageResource] = [.location01, .location02, .location03]
    
    var body: some View {
        VStack(spacing: 12){
            VStack(alignment: .leading, spacing: 4){
                Text("매장 정보")
                    .font(.body1_semiBold)
                    .frame(height: 24)
                Text("아벨라움")
                    .font(.body2_medium)
                    .foregroundStyle(.gray700)
                    .frame(height: 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 0){
                Text("경기 고양시 덕양구 동송로 70 아벨라움 241호")
                    .font(.body2_regular)
                    .lineLimit(1)
                Spacer()
                Image(.iconsCopy)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .padding(.horizontal, 12)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.gray200, lineWidth: 1))
            
            Image(.map)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 14))
            
            HStack{
                ForEach(images, id: \.self){ image in
                    Color.clear
                        .aspectRatio(1, contentMode: .fit)
                        .overlay {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            }
        }
        .padding(.horizontal, 16)
    }
}
