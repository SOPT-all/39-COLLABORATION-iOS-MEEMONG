//
//  DesignerCardView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import SwiftUI

struct DesignerCard: View {
    let designer: DesignerModel

    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 2) {
                ForEach(designer.portfolio.indices, id: \.self) { index in
                    Image(designer.portfolio[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 106, height: 104)
                        .clipped()
                }
            }
            
            VStack(alignment: .leading, spacing: 12) {
                profile
                treatmentInfo
            }
            .padding(.horizontal, 16)
        }
        .padding(.top, 1)
        .padding(.horizontal, 1)
        .padding(.bottom, 13)
        .frame(width: 324, height: 224)
        .background(.meemongWhite)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .overlay {
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(.gray300, lineWidth: 1)
        }
    }

    private var profile: some View {
        HStack(spacing: 12) {
            Image(designer.profile)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                Text(designer.name)
                    .font(.body1_semiBold)
                    .foregroundStyle(.meemongBlack)
                    .frame(height: 24)

                Text(designer.salon)
                    .font(.cap1_regular)
                    .foregroundStyle(.gray700)
                    .frame(height: 18)
            }
            .lineLimit(1)

            Spacer(minLength: 0)
        }
    }

    private var treatmentInfo: some View {
        HStack(spacing: 8) {
            Group {
                switch designer.treatment {
                case .free:
                    Text("무료시술")
                        .foregroundStyle(.meemongBlue)
                case .materials(let price):
                    HStack(spacing: 2) {
                        Text("재료비 발생")
                            .foregroundStyle(.gray950)
                        Text(price)
                            .foregroundStyle(.gray700)
                    }
                }
            }
            .font(.cap1_medium)
            .fixedSize()

            Rectangle()
                .fill(.gray500)
                .frame(width: 1, height: 14)

            Text(designer.location)
                .font(.cap1_regular)
                .foregroundStyle(.gray700)
                .lineLimit(1)

            Spacer(minLength: 0)
        }
        .frame(height: 18)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(.gray100, in: RoundedRectangle(cornerRadius: 4))
    }
}
