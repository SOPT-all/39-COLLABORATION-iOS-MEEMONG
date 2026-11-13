//
//  QuickMatchView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedType: MemberType = .designer

    var body: some View {
        VStack(spacing: 0) {
            TopNavigationBar {
                dismiss()
            }

            QuickMatchHeader(selectedType: $selectedType)

            switch selectedType {
            case .designer:
                QuickMatchDesignerView()
            case .model:
                QuickMatchModelView()
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    QuickMatchView()
}
