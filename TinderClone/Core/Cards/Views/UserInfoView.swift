//
//  UserInfoView.swift
//  TinderClone
//
//  Created by João Bueno on 14/01/25.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    @Binding var showProfileModal: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.fullName)
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    showProfileModal.toggle()
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.semibold)
                        .imageScale(.large)
                }
            }
            Text("testando")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(user: MockData.users[0], showProfileModal: .constant(false))
}
