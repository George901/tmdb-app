//
//  CoordinableView.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

protocol CoordinableView {
    var coordinatorDelegate: Coordinator? { get set }
}
