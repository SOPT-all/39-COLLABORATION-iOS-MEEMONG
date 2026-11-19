//
//  ServiceInfoBox.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct ServiceInfoBox: View {
    let postDetail: PostDetailResponseDTO
    var isUpdatingLike = false
    let onLike: () -> Void
    
    var body: some View {
        VStack(spacing: 12){
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(postDetail.title)
                        .meemongFont(.headline)
                    Spacer()
                    PostLikeButton(
                        isLiked: postDetail.isLiked,
                        isUpdating: isUpdatingLike,
                        unselectedImage: .defaultBlack,
                        action: onLike
                    )
                }
                .frame(maxWidth: .infinity)
                .frame(height: 43)
                HStack(spacing: 8){
                    Text(PriceType(rawValue: postDetail.priceType)?.typetitle ?? "")
                        .meemongFont(.body2_regular)
                        .foregroundStyle(.meemongBlue)
                        .padding(.horizontal, 6)
                        .frame(height: 24)
                        .background(.bgBlue, in: RoundedRectangle(cornerRadius: 6))
                    if let originalPrice = postDetail.originalPrice{
                        HStack(spacing: 4){
                            Text(originalPrice.formatted())
                                .meemongFont(.body1_regular)
                            Text("원")
                                .meemongFont(.body1_regular)
                        }
                        .foregroundStyle(.gray500)
                        .overlay(alignment: .center) {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundStyle(.gray500)
                        }
                    }
                    Spacer()
                }
                HStack(spacing: 4){
                    if let discountRate = postDetail.discountRate {
                        HStack(spacing: 0){
                            Text("\(Int(discountRate))")
                                .meemongFont(.title)
                            Text("%")
                                .meemongFont(.title)
                        }
                        .foregroundStyle(.meemongRed)
                    }
                    
                    if let displayPrice = postDetail.displayPrice {
                        Text(displayPrice.formatted())
                            .meemongFont(.title)
                            .foregroundStyle(.meemongBlack)
                        Text("원")
                            .meemongFont(.body2_medium)
                            .foregroundStyle(.gray700)
                        Spacer()
                    }
                }
            }
            HStack(spacing: 12){
                VStack(alignment: .leading, spacing: 8){
                    Text("시술 종류")
                        .meemongFont(.body2_semiBold)
                    Text("시그니처")
                        .meemongFont(.body2_semiBold)
                    Text("촬영범위")
                        .meemongFont(.body2_semiBold)
                    Text("매장명")
                        .meemongFont(.body2_semiBold)
                }
                .foregroundStyle(.gray500)
                
                VStack(alignment: .leading, spacing: 8){
                    Text(postDetail.treatmentTypes
                        .compactMap { TreatmentType(rawValue: $0)?.typetitle}
                        .joined(separator: ", "))
                        .meemongFont(.body2_regular)
                    Text(postDetail.signatures
                        .compactMap { TreatmentType(rawValue: $0)?.typetitle}
                        .joined(separator: ", "))
                        .meemongFont(.body2_regular)
                    Text((postDetail.shootingRanges ?? [])
                        .compactMap { ShootingRanges(rawValue: $0)?.typetitle}
                        .joined(separator: ", "))
                        .meemongFont(.body2_regular)
                    Text(postDetail.shopName)
                        .meemongFont(.body2_regular)
                }
                .foregroundStyle(.meemongBlack)
                Spacer()
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(.gray50, in: RoundedRectangle(cornerRadius: 12))
        }
        .padding(16)
    }
}
