//
//  RootCoordinableViewController.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

class RootCoordinableViewController: BaseViewController, CoordinableView {
    weak var coordinatorDelegate: Coordinator?
    
    deinit {
        coordinatorDelegate?.finish()
    }
}
