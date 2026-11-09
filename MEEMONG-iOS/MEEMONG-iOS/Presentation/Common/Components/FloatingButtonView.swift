//
//  FloatingButtonView.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct FloatingButtonView: View {
   @State var isSelected = false
   var body: some View {
       ZStack(alignment: .bottomTrailing){
           
           Color.clear
           
           VStack(alignment: .trailing, spacing: 12){
               if isSelected {
                   FloatingButtonMenu()
               }
               
               FloatingButton(isSelected: $isSelected)
           }
       }
       .padding(.trailing, 20)
       .padding(.bottom, 116)
   }
}

#Preview {
    FloatingButtonView()
}
