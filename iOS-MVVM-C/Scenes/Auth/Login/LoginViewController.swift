//
//  LoginViewController.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 19.08.2023.
//

import UIKit

class LoginViewController: UIViewController {

    var viewModel: LoginViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func registerPressed(_ sender: Any) {
        self.viewModel.registerPressed()
    }
    
    @IBAction func homePressed(_ sender: Any) {
        self.viewModel.homePressed()
    }
    
}
