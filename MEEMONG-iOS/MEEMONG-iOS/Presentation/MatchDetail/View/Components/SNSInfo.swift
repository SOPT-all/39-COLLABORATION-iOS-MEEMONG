//
//  SNSInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/13/26.
//

import SwiftUI

struct SNSInfo: View {
    private let icons: [ImageResource] = [
        .iconsInsta, .iconsNaver, .iconsYoutube
    ]
    private let titles: [String] = ["인스타그램", "네이버 플레이스", "유튜브"]
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
        Text("SNS")
            .font(.body1_semiBold)
        
            VStack(spacing: 8){
                ForEach(0..<titles.count, id: \.self) { index in
                    HStack(spacing: 0){
                        Image(icons[index])
                            .frame(width: 36, height: 36)
                        Text(titles[index])
                            .font(.body2_medium)
                            .foregroundStyle(.gray900)
                        Spacer()
                        
                        Button{
                        } label: {
                            Text("바로가기")
                                .font(.body2_medium)
                                .foregroundStyle(.gray800)
                        }
                        .frame(width: 64, height: 24)
                        .background(.gray100, in: RoundedRectangle(cornerRadius: 6))
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}
