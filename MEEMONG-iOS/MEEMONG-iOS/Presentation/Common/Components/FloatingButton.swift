//
//  FloatingButton.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingButton: View {
    @Binding var isSelected: Bool

    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            ZStack{
                Circle()
                    .fill(Color(.gray900))
                    .frame(width: 60, height: 60)
                
                Image(.iconsClose)
            }
            .shadow(radius: 5.7)
        }
    }
}

#Preview {
    FloatingButton(isSelected: .constant(false))
}
