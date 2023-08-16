//
//  HomeCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//
import Foundation
import UIKit

final class HomeCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        fatalError("Build Here")
    }
}
