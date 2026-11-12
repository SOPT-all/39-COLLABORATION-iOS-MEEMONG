//
//  DesignerProfileRow.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct DesignerProfileRow: View {
    var body: some View {
        HStack(alignment: .top){
            HStack(spacing: 8){
                Image(.designerMatching01)
                VStack(alignment: .leading, spacing: 4){
                    Text("승환")
                        .font(.headline)
                    HStack(spacing: 4){
                        Text("경기 고양시")
                            .font(.body1_regular)
                            .foregroundStyle(.gray600)
                        Circle()
                            .fill(Color.gray600)
                            .frame(width: 3, height: 3)
                        Text("11.6km")
                            .font(.body1_regular)
                            .foregroundStyle(.gray600)
                    }
                }
            }
            Spacer()
            HStack(spacing: 0){
                Text("43")
                    .font(.cap1_medium)
                    .foregroundStyle(.meemongBlue)
                Text("건 진행")
                    .font(.cap1_medium)
                    .foregroundStyle(.gray600)
            }
            .frame(width: 61)
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

#Preview {
    DesignerProfileRow()
}
