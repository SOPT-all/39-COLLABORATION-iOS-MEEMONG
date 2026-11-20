//
//  DesignerProfileRow.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

import Kingfisher

struct DesignerProfileRow: View {
    let matchDetail: MatchDetailModel
    
    var body: some View {
        HStack(alignment: .top) {
            HStack(spacing: 8) {
                KFImage(matchDetail.designerProfileImageURL)
                    .placeholder { Color.gray100 }
                    .resizable()
                    .scaledToFill()
                    .frame(width: 52, height: 52)
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 4) {
                    Text(matchDetail.designerName)
                        .meemongFont(.headline)
                        .foregroundStyle(.meemongBlack)
                    HStack(spacing: 4) {
                        Text(matchDetail.region)
                            .meemongFont(.body2_regular)
                            .foregroundStyle(.gray600)
                        Circle()
                            .fill(Color.gray600)
                            .frame(width: 3, height: 3)
                        Text("11.6km")
                            .meemongFont(.body2_regular)
                            .foregroundStyle(.gray600)
                    }
                }
            }
            Spacer()
            HStack(spacing: 0) {
                Text("\(matchDetail.completedTreatmentCount)")
                    .meemongFont(.cap1_medium)
                    .foregroundStyle(.meemongBlue)
                Text("건 진행")
                    .meemongFont(.cap1_medium)
                    .foregroundStyle(.gray600)
            }
            .padding(.horizontal, 6)
            .frame(height: 26)
            .background(.gray100, in: RoundedRectangle(cornerRadius: 6))
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .overlay(alignment: .bottom) {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(.gray100)
                .padding(.horizontal, 16)
        }
    }
}
