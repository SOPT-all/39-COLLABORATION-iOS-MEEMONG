//
//  FloatingButton.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingToggleButton: View {
    @Binding var isSelected: Bool
    
    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            if isSelected {
                ZStack{
                    Circle()
                        .fill(Color(.gray900))
                        .frame(width: 60, height: 60)
                    
                    Image(.iconsCloseB)
                }
            } else {
                ZStack{
                    Circle()
                        .fill(Color(.gray900))
                        .frame(width: 60, height: 60)
                    VStack(spacing: 0){
                        Image(.iconsPen)
                            .frame(width: 20, height: 20)
                        Text("글쓰기")
                            .font(.cap2_semibold)
                            .foregroundStyle(.meemongWhite)
                    }
                }
                .shadow(radius: 5.7)
            }
        }
    }
}
