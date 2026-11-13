//
//  Portfolio.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/12/26.
//

import SwiftUI

struct PortfolioGrid: View {
    private let images: [ImageResource] = [
        .portfolio01, .portfolio02, .portfolio03,
        .portfolio04, .portfolio05, .portfolio06,
        .portfolio07, .portfolio08, .portfolio09
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("포트폴리오")
                .font(.body1_semiBold)
                .padding(.bottom, 8)
            
            LazyVGrid(
                columns: Array(
                    repeating: GridItem(.flexible(), spacing: 4),
                    count: 3
                ),
                spacing: 4
            ) {
                ForEach(images.indices, id: \.self) { index in
                    Color.clear
                        .aspectRatio(1, contentMode: .fit)
                        .overlay {
                            Image(images[index])
                                .resizable()
                                .scaledToFill()
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 2))
                }
            }
            .padding(.bottom, 4)
            
            Button{
            } label: {
                HStack(spacing: 0){
                    Text("포트폴리오 더보기")
                        .font(.body1_regular)
                        .foregroundStyle(.gray700)
                    
                    Image(.iconsChevronLeft)
                        .frame(width: 24, height: 24)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 38)
            .background(.meemongWhite, in: RoundedRectangle(cornerRadius: 4))
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(.gray300, lineWidth: 1))
        }
        .padding(.horizontal, 20)
    }
}


#Preview {
    PortfolioGrid()
}
