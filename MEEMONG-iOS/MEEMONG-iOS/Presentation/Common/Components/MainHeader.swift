//
//  MainHeader.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/10/26.
//

import SwiftUI

struct MainHeader: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(.meemongLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 108, height: 28)

            Spacer()

            HStack(alignment: .center, spacing: 0) {
                Image(.iconsSearch)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .frame(width: 44, height: 44)

                Image(.iconsNotification)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .frame(width: 44, height: 44)
            }
        }
        .padding(.horizontal, 12)
        .padding(.bottom, 2)
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(Color.gray100)
                .frame(height: 1)
        }
    }
}

#Preview {
    MainHeader()
}
