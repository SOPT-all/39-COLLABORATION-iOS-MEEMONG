//
//  MatchDetailViewModel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/17/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class MatchDetailViewModel {
    var postDetail: PostDetailResponseDTO?
    var designerDetail: DesignerDetailResponseDTO?
    
    var isLoading = false
    var errorMessage: String?
    private(set) var isUpdatingLike = false
    
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

    func toggleLike() async -> Bool? {
        guard !isUpdatingLike, let postDetail else { return nil }

        isUpdatingLike = true
        errorMessage = nil
        defer { isUpdatingLike = false }

        do {
            let endPoint: EndPoint = postDetail.isLiked
                ? .unlike(postDetail.postId)
                : .like(postDetail.postId)
            let response: PostLikeResponseDTO = try await BaseService.shared.request(
                endPoint: endPoint
            )
            self.postDetail?.isLiked = response.isLiked
            return response.isLiked
        } catch is CancellationError {
            return nil
        } catch {
            errorMessage = error.localizedDescription
            return nil
        }
    }
}
