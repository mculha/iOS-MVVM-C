//
//  ProfileCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//
import Foundation
import UIKit

final class ProfileCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc: ProfileViewController = ProfileViewController.instantiate(storyboard: .profile)
        navigationController.pushViewController(vc, animated: true)
    }
}
