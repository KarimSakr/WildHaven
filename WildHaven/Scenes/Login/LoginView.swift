//
//  LoginView.swift
//  WildHaven
//
//  Created by Karim Sakr on 18/01/2026.
//

import SwiftUI

struct LoginView: View {
    
    @State private var viewModel = ViewModel()
    @State private var password: String = ""
    @State private var username: String = ""
    
    var body: some View {
        ZStack {
            gradientView
                .ignoresSafeArea()
            VStack {
                welcomeToText
                titleText
                Spacer()
                usernameTextField
                passwordTextField
                loginButton
                    .padding(.top)
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

//MARK: - Views -
extension LoginView {
    
    var welcomeToText: some View {
        Text("Welcome to")
    }
    
    var titleText: some View {
        Text("WildHaven")
            .font(.largeTitle)
            .bold()
    }
    
    var usernameTextField: some View {
        TextField("Username", text: $username)
            .padding(.horizontal)
            .frame(height: 44)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .fill(Color.clear)
            )
    }
    
    var passwordTextField: some View {
        SecureField("Password", text: $password)
            .padding(.horizontal)
            .frame(height: 44)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .fill(Color.clear)
            )
    }
    
    var loginButton: some View {
        Button("Login") {
            //
        }
        .background {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.green, lineWidth: 1)
                .fill(Color.clear)
        }
    }
    
    var gradientView: some View {
        LinearGradient(colors: [.green, .clear, .clear], startPoint: .bottom, endPoint: .top)
    }
}

#Preview {
    LoginView()
}
