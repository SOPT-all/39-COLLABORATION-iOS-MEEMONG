//
//  FloatingQuickMatchMenu.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingQuickMatchMenu: View {
    private let icons: [ImageResource] = [.iconsAnnouncement, .iconsRecommend]
    private let titles: [String] = ["일반공고", "미몽추천"]

    var body: some View {
        VStack(spacing: 0){
            ForEach(0..<titles.count, id: \.self) { index in
                Button{
                } label: {
                    HStack(spacing: 4){
                        Image(icons[index])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)

                        Text(titles[index])
                            .font(.body2_medium)
                            .foregroundStyle(.white)
                    }
                }
                .padding(.leading, 12)
                .frame(width: 102, height: 40, alignment: .leading)
            }
        }
        .background(Color(.gray900))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(radius: 5.7)
    }
}
