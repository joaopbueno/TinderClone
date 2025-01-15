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
        ZStack {
            ForEach(viewModel.cardModel) { card in
                CardView(model: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
