//
//  PageControl.swift
//  ExPageControl
//
//  Created by ssg on 1/26/24.
//

import SwiftUI

/// 커스텀 페이지 컨트롤 애니메이션 Custom PageControl + Animation
struct PageControl: View {
    
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages, id: \.self) { pagingIndex in
                
                let isCurrentPage = currentPage == pagingIndex
                let height = 8.0
                let width = isCurrentPage ? height * 2 : height
                
                Capsule()
                    .fill(isCurrentPage ? .blue : .gray.opacity(0.5))
                    .frame(width: width, height: height)
            }
        }
        .animation(.linear, value: currentPage)
    }
}

#Preview {
    PageControl(numberOfPages: 3, currentPage: .constant(0))
}
