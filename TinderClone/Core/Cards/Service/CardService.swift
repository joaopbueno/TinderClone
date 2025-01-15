//
//  CardService.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({CardModel(user: $0)})
    }
}
