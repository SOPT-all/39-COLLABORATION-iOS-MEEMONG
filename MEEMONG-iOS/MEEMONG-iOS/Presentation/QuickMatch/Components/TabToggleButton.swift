//
//  TabToggleButton.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

enum MemberType: String, CaseIterable {
    case designer = "디자이너"
    case model = "모델"
}

struct TabToggleButton: View {
    @Binding var selectedType: MemberType

    var body: some View {
        HStack(spacing: 0) {
            ForEach(MemberType.allCases, id: \.self) { type in
                Button {
                    selectedType = type
                } label: {
                    Text(type.rawValue)
                        .font(.body2_semiBold)
                        .foregroundStyle(selectedType == type ? .meemongWhite : .gray500)
                        .lineLimit(1)
                        .fixedSize(horizontal: true, vertical: false)
                        .frame(minWidth: 48)
                        .frame(height: 20)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background {
                            if selectedType == type {
                                Capsule()
                                    .fill(.gray800)
                            }
                        }
                        .contentShape(Capsule())
                }
                .buttonStyle(.plain)
            }
        }
        .padding(4)
        .background(.meemongWhite, in: Capsule())
        .overlay {
            Capsule()
                .strokeBorder(.gray100, lineWidth: 1)
        }
    }
}
