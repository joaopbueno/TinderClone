//
//  CardView.swift
//  TinderClone
//
//  Created by João Bueno on 14/01/25.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.billieEilish)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal, 32)
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

private extension CardView {
    private var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    private var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
