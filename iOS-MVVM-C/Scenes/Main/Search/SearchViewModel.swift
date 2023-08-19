//
//  SearchViewModel.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//

import Foundation

final class SearchViewModel: BaseViewModel {
    private weak var coordinator: SearchCoordinator?
    
    init(coordinator: SearchCoordinator) {
        self.coordinator = coordinator
    }
}
