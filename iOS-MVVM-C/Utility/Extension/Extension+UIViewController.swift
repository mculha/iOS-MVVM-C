//
//  Extension+UIViewController.swift
//  iOS-MVVM-C
//
//  Created by Melih Çulha on 16.08.2023.
//

import Foundation
import UIKit

extension UIViewController {
    
    class func instantiate<T: UIViewController>(storyboard: AppStoryboard = .main) -> T {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}
