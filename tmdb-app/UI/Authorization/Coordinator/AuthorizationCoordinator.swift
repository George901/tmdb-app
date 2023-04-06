//
//  AuthorizationCoordinator.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

protocol AuthorizationCoordinable: AnyObject {
    func didAuthorize()
}

final class AuthorizationCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator] = []
    
    weak var parent: Coordinator?
    weak var delegate: AuthorizationCoordinable?
    
    init(navigationController: UINavigationController?, delegate: AuthorizationCoordinable?) {
        self.navigationController = navigationController
        self.delegate = delegate
    }
    
    func start() {
        let loginVC = UIStoryboard(name: "Authorization", bundle: nil).instantiateInitialViewController() as? LoginViewController ?? LoginViewController()
        loginVC.viewModel = LoginViewModel(coordinator: self)
        navigationController?.pushViewController(loginVC, animated: false)
    }
    
    func loginSucceeded() {
        delegate?.didAuthorize()
    }
}
