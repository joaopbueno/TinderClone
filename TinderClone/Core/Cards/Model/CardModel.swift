//
//  CardModel.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel : Identifiable {
    var id: String {
        return user.id
    }
}
