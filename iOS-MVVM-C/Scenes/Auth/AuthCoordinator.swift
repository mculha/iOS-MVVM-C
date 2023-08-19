//
//  AuthCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 19.08.2023.
//

import Foundation
import UIKit

final class AuthCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    weak var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.prepareLogin()
    }
    
    func prepareLogin() {
        let vc: LoginViewController = LoginViewController.instantiate(storyboard: .auth)
        let viewModel = LoginViewModel(coordinator: self)
        vc.viewModel = viewModel
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func prepareRegister() {
        let vc: RegisterViewController = RegisterViewController.instantiate(storyboard: .auth)
        let viewModel = RegisterViewModel(coordinator: self)
        vc.viewModel = viewModel
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func prepareMain() {
        let parent = self.parentCoordinator as! AppCoordinator
        parent.openMainCoordinator()
        parentCoordinator?.childDidFinish(self)
        //Necessary to avoid memory leaks another option is to define navigation Controller as weak
        self.navigationController.viewControllers.removeAll { $0 is RegisterViewController || $0 is LoginViewController }
    }
}
