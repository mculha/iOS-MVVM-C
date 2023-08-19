//
//  ProfileViewController.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//

import UIKit

class ProfileViewController: BaseViewController {

    var viewModel: ProfileViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func purchasePressed(_ sender: Any) {
        self.viewModel.purchasePressed()
    }
    
}
