//
//  QuickMatchView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchView: View {
    @State private var selectedType: MemberType = .designer

    var body: some View {
        VStack(spacing: 0) {
            QuickMatchHeader(selectedType: $selectedType)

            switch selectedType {
            case .designer:
                QuickMatchDesignerView()
            case .model:
                QuickMatchModelView()
            }
        }
        .navigationTitle("빠른 매칭")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    QuickMatchView()
}
