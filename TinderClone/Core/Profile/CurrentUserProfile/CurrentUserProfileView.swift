//
//  CurrentUserProfileView.swift
//  TinderClone
//
//  Created by João Bueno on 20/01/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                CurrentUserProfileHeaderView(user: user)
                
                Section("Informações da Conta") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullName)
                    }
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text("teste@teste.com")
                    }
                }
                
                Section("Legal") {
                    Text("Termsos Service")
                }
                
                Section {
                    Button("Logout") {
                        print("Logout")
                    }
                    .foregroundStyle(.red)
                    
                    Button("Deletar Conta") {
                        print("Logout")
                    }
                    .foregroundStyle(.red)
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
