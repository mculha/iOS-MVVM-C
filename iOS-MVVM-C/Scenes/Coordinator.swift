//
//  Coordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 14.08.2023.
//

import Foundation

class Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    
    func start() {
        preconditionFailure("This method needs to be overriden by concrete subclass")
    }
    
    func finish() {
        preconditionFailure("This method needs to be overriden by concrete subclass")
    }
    
    func addChildCoordinator(_ coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(_ coordinator: Coordinator) {
        guard let index = childCoordinators.firstIndex(of: coordinator) else { return }
        
        childCoordinators.remove(at: index)
    }
    
    func removeAllChildCoordinatorsWith<T>(type: T.Type) {
        childCoordinators = childCoordinators.filter { $0 is T == false}
    }
    
    func removeAllChildCoordinators() {
        childCoordinators.removeAll()
    }
    
}

extension Coordinator: Equatable {
    
    static func == (lhs: Coordinator, rhs: Coordinator) -> Bool {
        return lhs === rhs
    }
    
}
