//
//  MatchDetailViewModel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/17/26.
//

import Foundation
import Observation

@Observable
final class MatchDetailViewModel {
    var postDetail: PostDetailResponseDTO?
    var designerDetail: DesignerDetailResponseDTO?
    
    var isLoading = false
    var errorMessage: String?
    
    func loadMatchDetail(postId: Int64) async {
        guard !isLoading else { return }
        
        isLoading = true
        errorMessage = nil
        defer { isLoading = false }
        
        do {
            let postResponse: PostDetailResponseDTO =
            try await BaseService.shared.request(
                endPoint: .postDetail(postId)
            )
            postDetail = postResponse
            
            let designerResponse: DesignerDetailResponseDTO =
            try await BaseService.shared.request(
                endPoint: .designerDetail(postId)
            )
            designerDetail = designerResponse
        } catch is CancellationError {
            return
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
