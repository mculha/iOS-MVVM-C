//
//  MainCoordinator.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 19.08.2023.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    weak var parentCoordinator: Coordinator?
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.setupTabbar()
    }
    
    private func setupTabbar() {
        let tabbar = UITabBarController.init()
        
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = buildTabItem(title: "Home", image: UIImage(systemName: "house")!, selectedImage: UIImage(systemName: "house.fill")!)
        
        let profileNavigationController = UINavigationController()
        let profileCoordinator = ProfileCoordinator(navigationController: profileNavigationController)
        profileNavigationController.tabBarItem = buildTabItem(title: "Profile", image: UIImage(systemName: "person")!, selectedImage: UIImage(systemName: "person.fill")!)
        
        let searchNavigationController = UINavigationController()
        let searchCoordinator = SearchCoordinator(navigationController: searchNavigationController)
        searchNavigationController.tabBarItem = buildTabItem(title: "Search", image: UIImage(systemName: "magnifyingglass.circle")!, selectedImage: UIImage(systemName: "magnifyingglass.circle.fill")!)
        
        tabbar.viewControllers = [profileNavigationController, homeNavigationController, searchNavigationController]
        navigationController.pushViewController(tabbar, animated: true)
        navigationController.setNavigationBarHidden(true, animated: true)
        
        addChild(coordinator: homeCoordinator)
        addChild(coordinator: profileCoordinator)
        addChild(coordinator: searchCoordinator)
        
        homeCoordinator.parentCoordinator = self
        profileCoordinator.parentCoordinator = self
        searchCoordinator.parentCoordinator = self
        
        homeCoordinator.start()
        profileCoordinator.start()
        searchCoordinator.start()
    }
    
    private func buildTabItem(title: String, image: UIImage, selectedImage: UIImage) -> UITabBarItem {
        let item = UITabBarItem()
        
        item.title = title
        item.image = image
        item.selectedImage = selectedImage
        
        return item
    }
    
}
