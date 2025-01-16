//
//  User.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    var age: Int
    var profileImageURLs: [String]
}
