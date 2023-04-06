//
//  AppCoordinator.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator] = []
    weak var parent: Coordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        startAuthorizationFlow()
    }
    
    private func startAuthorizationFlow() {
        let authCoordinator = AuthorizationCoordinator(navigationController: navigationController, delegate: self)
        add(authCoordinator)
        authCoordinator.start()
    }
    
    private func startTabBar() {
        
    }
}

extension AppCoordinator: AuthorizationCoordinable {
    func didAuthorize() {
        navigationController?.popViewController(animated: false)
        startTabBar()
    }
}
