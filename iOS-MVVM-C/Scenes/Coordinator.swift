//
//  Coordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 14.08.2023.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
    func addChild(coordinator: Coordinator)
    func removeChild(coordinator: Coordinator)
    
}

extension Coordinator {
    
    func addChild(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
    }
    func removeChild(coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter {$0 !== coordinator}
    }
}
