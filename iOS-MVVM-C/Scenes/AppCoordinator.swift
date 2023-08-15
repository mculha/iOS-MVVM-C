//
//  AppCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 14.08.2023.
//

import Foundation
import UIKit

class AppCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc: ViewController = ViewController.instantiate()
        vc.coordinator = self
        navigationController.delegate = self
        navigationController.pushViewController(vc, animated: true)
    }
}

extension UIViewController {
    
    class func instantiate<T: UIViewController>(storyboard: AppStoryboard = .main) -> T {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}
enum AppStoryboard: String {
    case main = "Main"
}
