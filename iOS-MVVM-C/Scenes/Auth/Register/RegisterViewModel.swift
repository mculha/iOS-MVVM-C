//
//  RegisterViewModel.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 19.08.2023.
//

import Foundation

final class RegisterViewModel: BaseViewModel {
    
    private weak var coordinator: AuthCoordinator?
    
    init(coordinator: AuthCoordinator) {
        self.coordinator = coordinator
    }
    
    func homePressed() {
        self.coordinator?.prepareMain()
    }
}
