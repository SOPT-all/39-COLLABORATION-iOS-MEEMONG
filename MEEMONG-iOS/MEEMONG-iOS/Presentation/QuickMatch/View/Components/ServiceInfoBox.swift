//
//  ServiceInfoBox.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct ServiceInfoBox: View {
    var body: some View {
        VStack(spacing: 12){
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text("뭘 해야될 지 모르겠다면?")
                        .font(.headline)
                    
                    Spacer()
                    
                    Image(.defaultBlack)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 43)
                
                HStack(spacing: 8){
                    Text("리뷰특가")
                        .font(.body2_regular)
                        .foregroundStyle(.meemongBlue)
                        .frame(width: 60, height: 24)
                        .background(.bgBlue, in: RoundedRectangle(cornerRadius: 6))
                    
                    HStack(spacing: 4){
                        Text("35,000")
                        Text("원")
                    }
                    .font(.body1_regular)
                    .foregroundStyle(.gray500)
                    .overlay(alignment: .center) {
                        Rectangle()
                            .frame(height: 4)
                            .foregroundStyle(.gray500)
                    }
                    Spacer()
                }
                
                HStack(spacing: 4){
                    HStack(spacing: 0){
                        Text("50")
                        Text("%")
                    }
                    .font(.title)
                    .foregroundStyle(.meemongRed)
                    
                    Text("17,500")
                        .font(.title)
                        .foregroundStyle(.meemongBlack)
                    
                    Text("원")
                        .font(.body2_medium)
                        .foregroundStyle(.gray700)
                    
                    Spacer()
                }
            }
            
            HStack(spacing: 12){
                
                VStack(alignment: .leading, spacing: 8){
                    Text("시술 종류")
                    Text("시그니처")
                    Text("촬영범위")
                    Text("매장명")
                }
                .font(.body2_semiBold)
                .foregroundStyle(.gray500)
                
                VStack(alignment: .leading, spacing: 8){
                    Text("컷트")
                    Text("컷트, 펌")
                    Text("얼굴 노출, 영상")
                    Text("아벨라움")
                }
                .font(.body2_regular)
                .foregroundStyle(.meemongBlack)
                
                Spacer()
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            .frame(height: 128)
            .background(.gray50, in: RoundedRectangle(cornerRadius: 12))
        }
        .padding(16)
    }
}

#Preview {
    ServiceInfoBox()
}
