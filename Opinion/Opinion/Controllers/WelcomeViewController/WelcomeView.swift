//
//  WelcomeView.swift
//  Opinion
//
//  Created by Serega Kushnarev on 24.04.2022.
//

import UIKit
import SnapKit
import ConfettiView

final class WelcomeView {
    
    //MARK: - Public properties
    
    static let shared = WelcomeView()
    
    //MARK: - setup UI
    
    func createConfettiView(_ confetti: ConfettiView, view: UIView) {
        confetti.frame = CGRect(x: 0, y: 0, width: view.frame.width,
                                height: view.frame.height)
        confetti.center = view.center
    }
    
    func createLaunchImage(_ imageView: UIImageView, view: UIView) {
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width,
                                 height: view.frame.height)
        imageView.center = view.center
    }
}

