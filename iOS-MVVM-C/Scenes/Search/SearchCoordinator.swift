//
//  SearchCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//

import Foundation
import UIKit

final class SearchCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc: SearchViewController = SearchViewController.instantiate(storyboard: .search)
        vc.viewModel = SearchViewModel(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
}
