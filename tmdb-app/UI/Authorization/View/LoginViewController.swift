//
//  LoginViewController.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

class LoginViewController: RootCoordinableViewController {

    var viewModel: LoginViewModelProtocol!
    
    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func loginButtonPressed(_ sender: UIButton) {
        
    }
}
