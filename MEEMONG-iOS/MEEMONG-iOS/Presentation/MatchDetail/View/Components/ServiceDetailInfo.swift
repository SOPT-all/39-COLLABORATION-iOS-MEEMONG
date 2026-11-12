//
//  ServiceDetailInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/12/26.
//

import SwiftUI

struct ServiceDetailInfo: View {
    var body: some View {
        Text("""
            어떤 머리를 해야 할지 모르겠을땐 이 메뉴를 선택해주세요!\n
            와서 꼼꼼한 상담후 집에서도 손질편한 머리를 해드리겠습니다!\
            [가격은 최저 가격 설정 때문에 5천원 되어 있지만 시술 가격은 아닙니다]
            """)
            .font(.body2_medium)
            .foregroundStyle(.gray700)
            .padding(.horizontal, 16)
            .padding(.vertical, 24)
    }
}

#Preview {
    ServiceDetailInfo()
}
