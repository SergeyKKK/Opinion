//
//  UIViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit

extension UIViewController {
    
    func showErrorAlert(text: String) {
        let alert = UIAlertController(title: nil, message: text, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
