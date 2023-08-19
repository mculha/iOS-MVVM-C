//
//  AppCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 14.08.2023.
//

import Foundation
import UIKit

final class AppCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var parentCoordinator: Coordinator?
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        setupAuthCoordinator()
    }
    
    func setupAuthCoordinator() {
        let authCoordinator = AuthCoordinator(navigationController: self.navigationController)
        authCoordinator.parentCoordinator = self
        addChild(coordinator: authCoordinator)
        authCoordinator.start()
    }
    
    func openMainCoordinator() {
        let mainCoordinator = MainCoordinator(navigationController: self.navigationController)
        mainCoordinator.parentCoordinator = self
        addChild(coordinator: mainCoordinator)
        mainCoordinator.start()
    }
}
