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
    
    func setGradientBackground(redTop: CGFloat, greenTop: CGFloat, blueTop: CGFloat, alphaTop: CGFloat,
                               redBottom: CGFloat, greenBottom: CGFloat, blueBottom: CGFloat, alphaBottom: CGFloat) {
        let colorTop =  UIColor(red: redTop, green: greenTop, blue: blueTop, alpha: alphaTop).cgColor
        let colorBottom = UIColor(red: redBottom, green: greenBottom, blue: blueBottom, alpha: alphaBottom).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
}
