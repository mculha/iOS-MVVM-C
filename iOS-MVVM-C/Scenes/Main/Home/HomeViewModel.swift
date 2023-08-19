//
//  HomeViewModel.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//

import Foundation

final class HomeViewModel: BaseViewModel {
    weak var coordinator: HomeCoordinator?
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
}
