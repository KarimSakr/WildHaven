//
//  LoginView.swift
//  WildHaven
//
//  Created by Karim Sakr on 18/01/2026.
//

import SwiftUI

struct LoginView: View {
    
    @State private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            topView
            VStack {
                usernameTextField
                    .padding(.top)
                passwordTextField
                    .padding(.bottom)
                loginButton
                    .padding(.top)
                signUpButton
                Spacer()
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

//MARK: - Views -
extension LoginView {
    
    var topView: some View {
            VStack  {
                welcomeToText
                    .padding(.top, 100)
                titleText
                    .padding(.bottom, 50)
            }
            .frame(maxWidth: .infinity)
            .background(Color.green)
    }
    
    var welcomeToText: some View {
        Text("welcome_to")
    }
    
    var titleText: some View {
        Text("wildhaven")
            .font(.largeTitle)
            .bold()
    }
    
    var usernameTextField: some View {
        TextField("email_address", text: $viewModel.email)
            .padding(.horizontal)
            .frame(height: 44)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .fill(Color.clear)
            )
            .keyboardType(.emailAddress)
            .textContentType(.emailAddress)
    }
    
    var passwordTextField: some View {
        SecureField("password", text: $viewModel.password)
            .padding(.horizontal)
            .frame(height: 44)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .fill(Color.clear)
            )
            .textContentType(.password)
    }
    
    var loginButton: some View {
        Button("login") {
            //
        }
        .frame(maxWidth: .infinity, maxHeight: 44)
        .foregroundStyle(Color.white)
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.green)
        }
    }
    
    var signUpButton: some View {
        Button("do_not_have_an_account") {
            //
        }
        .foregroundStyle(Color.black)
        .underline()
    }
}

#Preview {
    LoginView()
}
