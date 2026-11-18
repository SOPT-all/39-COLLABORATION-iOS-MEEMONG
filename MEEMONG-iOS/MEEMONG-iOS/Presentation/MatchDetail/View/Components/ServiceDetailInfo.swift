//
//  ServiceDetailInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/12/26.
//

import SwiftUI

struct ServiceDetailInfo: View {
    let content: String
    
    var body: some View {
        Text(content)
            .font(.body2_medium)
            .foregroundStyle(.gray700)
            .padding(.horizontal, 16)
            .padding(.vertical, 24)
    }
}
