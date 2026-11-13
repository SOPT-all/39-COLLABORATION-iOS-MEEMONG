//
//  HeartButton.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct HeartButton: View {
    @State private var isSelected = false

    var body: some View {
        Button {
            isSelected.toggle()
        } label: {
            Image(isSelected ? .statusSelected : .defaultWhite)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}
