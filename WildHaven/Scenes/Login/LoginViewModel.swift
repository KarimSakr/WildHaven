//
//  LoginViewModel.swift
//  WildHaven
//
//  Created by Karim Sakr on 18/01/2026.
//

import SwiftUI

extension LoginView {
    
    @Observable
    class ViewModel {
        var password: String = ""
        var email: String = ""
    }
}
