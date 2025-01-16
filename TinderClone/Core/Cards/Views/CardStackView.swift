//
//  CardStackView.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        VStack(spacing: 16) {
            ZStack {
                ForEach(viewModel.cardModel) { card in
                    CardView(viewModel: viewModel, model: card)
                }
            }
            
            if !viewModel.cardModel.isEmpty {
                SwipeActionButtonsViews(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    CardStackView()
}
