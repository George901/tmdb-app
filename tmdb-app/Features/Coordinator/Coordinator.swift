//
//  Coordinator.swift
//  tmdb-app
//
//  Created by George Farafonov on 06.04.2023.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator] { get set }
    var parent: Coordinator? { get set }
    func start()
    func add(_ child: Coordinator?)
    func finish()
    func didFinish(_ child: Coordinator?)
    func getChild<T>(of type: T.Type) -> T?
}

extension Coordinator {
    func finish() {
        parent?.didFinish(self)
    }
    
    func didFinish(_ child: Coordinator?) {
        guard let child = child else { return }
        children.removeAll(where: { $0 === child })
    }

    func add(_ child: Coordinator?) {
        if let child = child {
            child.parent = self
            children.append(child)
        }
    }

    func getChild<T>(of type: T.Type) -> T? {
        children.first(where: { $0 is T }) as? T
    }
}
