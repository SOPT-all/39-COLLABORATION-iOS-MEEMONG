//
//  ImageCarousel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct CarouselItem : Hashable {
    let id : Int
    let image : String
}

struct ImageCarousel: View {
    @State private var currentIndex = 0
    
    var items: [CarouselItem] = [
        CarouselItem(id: 0, image: "hero_01"),
        CarouselItem(id: 1, image: "hero_02"),
        CarouselItem(id: 2, image: "hero_03"),
        CarouselItem(id: 3, image: "hero_04"),
        CarouselItem(id: 4, image: "hero_05"),
        CarouselItem(id: 5, image: "hero_06")
    ]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(Array(items.enumerated()), id: \.element.id) { index, item in
                Image(item.image)
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
            } label: {
                Image(.chevronLeft)
                    .frame(width: 24, height: 24)
                    .frame(width: 44, height: 44)
            }
            .padding(.top, 64)
            .padding(.leading, 6)
        }
        .overlay(alignment: .bottomTrailing) {
            Text("\(currentIndex + 1)/\(items.count)")
                .font(.body2_medium)
                .foregroundStyle(.white)
                .padding(.horizontal, 14)
                .padding(.vertical, 4)
                .background(.opacity50 , in: Capsule())
                .padding(16)
        }
    }
}

#Preview {
    ImageCarousel()
}
