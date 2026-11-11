//
//  ReservationButton.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct ReservationButton: View {
    var body: some View {
        Button{
            
        } label: {
            Text("예약 진행")
                .font(.body1_semiBold)
                .foregroundStyle(.meemongWhite)
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(.gray950, in: RoundedRectangle(cornerRadius: 8))
        }
        .frame(maxWidth: .infinity)
        .frame(height: 96)
        .padding(.horizontal, 16)
        .padding(.vertical, 24)
    }
}

#Preview {
    ReservationButton()
}
