//
//  MockData.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullName: "Billie Eilish",
            age: 23,
            profileImageURLs: [
                "billie-eilish",
                "billie-eilish2",
                "billie-eilish3",
                "billie-eilish4"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Avril Lavigne",
            age: 48,
            profileImageURLs: [
                "avril-lavigne",
                "avril-lavigne2"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullName: "Chris Martin",
            age: 52,
            profileImageURLs: [
                "chris-martin",
                "chris-martin2",
                "chris-martin3"
            ]
        )
    ]
}
