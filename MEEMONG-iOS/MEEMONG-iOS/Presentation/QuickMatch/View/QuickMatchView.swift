//
//  QuickMatchView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchView: View {
    @Environment(\.dismiss)
    private var dismiss
    @State private var viewModel = QuickMatchViewModel()
    @State private var selectedType: MemberType = .designer

    var onLikeChanged: (Int64, Bool) -> Void = { _, _ in }

    var body: some View {
        VStack(spacing: 0) {
            TopNavigationBar {
                dismiss()
            }

            QuickMatchHeader(selectedType: $selectedType)

            switch selectedType {
            case .designer:
                QuickMatchDesignerView(
                    viewModel: viewModel,
                    onLikeChanged: onLikeChanged
                )
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
