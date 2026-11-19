//
//  ImageCarousel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

import Kingfisher

struct ImageCarousel: View {
    @Environment(\.dismiss)
    private var dismiss
    @State private var currentIndex = 0
    let imageUrls: [URL]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(Array(imageUrls.enumerated()), id: \.offset) { index, imageUrl in
                KFImage(imageUrl)
                    .placeholder { Color.gray100 }
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .tag(index)
                    .overlay(alignment: .top) {
                        Image(.gradient)
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .frame(height: 90)
                    }
            }
        }
        .frame(height: 375)
        .tabViewStyle(.page(indexDisplayMode: .never))
        .overlay(alignment: .topLeading) {
            Button {
                dismiss()
            } label: {
                Image(.chevronLeft)
                    .frame(width: 24, height: 24)
                    .frame(width: 44, height: 44)
            }
            .padding(.top, 64)
            .padding(.leading, 6)
        }
        .overlay(alignment: .bottomTrailing) {
            Text("\(currentIndex + 1)/\(imageUrls.count)")
                .meemongFont(.body2_medium)
                .foregroundStyle(.meemongWhite)
                .frame(height: 20)
                .padding(.horizontal, 14)
                .padding(.vertical, 4)
                .background(.opacity50, in: Capsule())
                .padding(.bottom, 9)
                .padding(.trailing, 15)
        }
    }
}
