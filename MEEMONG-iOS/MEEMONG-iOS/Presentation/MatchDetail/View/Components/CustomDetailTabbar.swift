//
//  CustomDetailTabbar.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

enum DetailTab: CaseIterable {
    case detail
    case designerinfo
}

struct CustomDetailTabbar: View {
    @Binding var selectedTab: DetailTab
    var body: some View {
        HStack(spacing: 0){
            HStack(spacing: 0){
                Button {
                    selectedTab = .detail
                } label: {
                    Text("내용상세")
                        .font(.body1_semiBold)
                        .foregroundStyle(
                            selectedTab == .detail ? Color.gray900 : Color.gray700
                        )
                        .padding(.top, 12)
                        .padding(.bottom, 14)
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(Color.gray900)
                                .frame(height: 2)
                                .opacity(selectedTab == .detail ? 1 : 0)
                        }
                        .padding(.horizontal, 42)
                        .contentShape(Rectangle())
                }
                Button {
                    selectedTab = .designerinfo
                } label: {
                    Text("디자이너 정보")
                        .font(.body1_semiBold)
                        .foregroundStyle(
                            selectedTab == .designerinfo ? Color.gray900 : Color.gray700
                        )
                        .padding(.top, 12)
                        .padding(.bottom, 14)
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(Color.gray900)
                                .frame(height: 2)
                                .opacity(selectedTab == .designerinfo ? 1 : 0)
                        }
                        .frame(maxWidth: .infinity)
                        .contentShape(Rectangle())
                }
            }
            .background(alignment: .bottom) {
                Rectangle()
                    .fill(Color.gray200)
                    .frame(height: 2)
            }
            .padding(.horizontal, 16)
        }
    }
}
