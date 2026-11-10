//
//  MainTopNavigationBar.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/10/26.
//

import SwiftUI

struct TopNavigationBar: View {
    let onBack: () -> Void

    var body: some View {
        Text("빠른 매칭")
            .foregroundStyle(.gray900)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height: 44)
            .overlay(alignment: .leading) {
                Button {
                    onBack()
                } label: {
                    Image(.iconsBackBlack)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .frame(width: 44, height: 44)
                        .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .padding(.leading, 12)
            }
            .padding(.bottom, 2)
            .overlay(alignment: .bottom) {
                Rectangle()
                    .fill(Color.gray100)
                    .frame(height: 1)
            }
    }
}

#Preview {
    TopNavigationBar(onBack: {})
}
