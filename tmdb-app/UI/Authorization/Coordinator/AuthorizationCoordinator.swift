//
//  AuthorizationCoordinator.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

class AuthorizationCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    var children: [Coordinator] = []
    
    weak var parent: Coordinator?
    
    func start() {
        
    }
}
