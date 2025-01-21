//
//  CurrentUserProfileView.swift
//  TinderClone
//
//  Created by João Bueno on 20/01/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                
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
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
