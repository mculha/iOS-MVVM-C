//
//  ProfileViewModel.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//

import Foundation

final class ProfileViewModel: BaseViewModel {
    weak var coordinator: ProfileCoordinator?
    
    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }
    
    func purchasePressed() {
        self.coordinator?.pushPurchase()
    }
}
