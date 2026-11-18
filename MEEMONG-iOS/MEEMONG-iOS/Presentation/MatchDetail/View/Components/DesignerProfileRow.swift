//
//  DesignerProfileRow.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct DesignerProfileRow: View {
    let postDetail: PostDetailResponseDTO
    
    var body: some View {
        HStack(alignment: .top){
            HStack(spacing: 8){
                AsyncImage(url: URL(string: postDetail.designerProfileImageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.gray100
                }
                .frame(width: 52, height: 52)
                .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4){
                    Text(postDetail.designerName)
                        .font(.headline)
                    HStack(spacing: 4){
                        Text(postDetail.region)
                            .font(.body2_regular)
                            .foregroundStyle(.gray600)
                        Circle()
                            .fill(Color.gray600)
                            .frame(width: 3, height: 3)
                        Text("11.6km")
                            .font(.body2_regular)
                            .foregroundStyle(.gray600)
                    }
                }
            }
            Spacer()
            HStack(spacing: 0){
                Text("\(postDetail.completedTreatmentCount)")
                    .font(.cap1_medium)
                    .foregroundStyle(.meemongBlue)
                Text("건 진행")
                    .font(.cap1_medium)
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
