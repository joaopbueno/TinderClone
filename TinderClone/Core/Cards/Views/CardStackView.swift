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
                CardView(viewModel: viewModel, model: card)
            }
        }
        .onChange(of: viewModel.cardModel) { oldValue, newValue in
            print("\(oldValue.count) ---")
        }
    }
}

#Preview {
    CardStackView()
}
