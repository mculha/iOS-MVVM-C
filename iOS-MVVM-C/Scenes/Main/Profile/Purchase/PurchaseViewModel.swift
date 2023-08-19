//
//  PurchaseViewModel.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 17.08.2023.
//

import Foundation

final class PurchaseViewModel: BaseViewModel {
    weak var coordinator: ProfileCoordinator?
    
    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }
}
