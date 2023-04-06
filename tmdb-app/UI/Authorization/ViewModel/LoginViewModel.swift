//
//  LoginViewModel.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import Foundation

protocol LoginViewModelProtocol: AnyObject {
    func loginPressed()
}

final class LoginViewModel: LoginViewModelProtocol {
    private var coordinator: AuthorizationCoordinator

    init(coordinator: AuthorizationCoordinator) {
        self.coordinator = coordinator
    }
    
    func loginPressed() {
        coordinator.loginSucceeded()
    }
}
