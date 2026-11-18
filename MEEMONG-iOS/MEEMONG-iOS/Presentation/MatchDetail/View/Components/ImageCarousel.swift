//
//  ImageCarousel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct ImageCarousel: View {
    @Environment(\.dismiss) private var dismiss
    @State private var currentIndex = 0
    let postImageUrls: [String]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(Array(postImageUrls.enumerated()), id: \.offset) { index, imageUrl in
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.gray100
                }
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
            Text("\(currentIndex + 1)/\(postImageUrls.count)")
                .font(.body2_medium)
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
