//
//  CardStackView.swift
//  TinderClone
//
//  Created by João Bueno on 15/01/25.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0 ..< 10) { index in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
