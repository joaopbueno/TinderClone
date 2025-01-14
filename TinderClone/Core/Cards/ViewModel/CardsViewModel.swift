//
//  CardsViewModel.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import Foundation

class CardsViewModel: ObservableObject {
    @Published var cardModel = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() } 
    }
    
    func fetchCardModels() async {
        do {
            self.cardModel = try await service.fetchCardModels()
        } catch {
            print("ERROR: \(error)")
        }
    }
}
