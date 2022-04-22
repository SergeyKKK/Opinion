//
//  ViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit
import ConfettiView

class WelcomeViewController: UIViewController {
    
    private lazy var confettiView = ConfettiView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createConfettiView(confettiView)
    }
    
    private func createConfettiView(_ confetti: ConfettiView) {
        confetti.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        confetti.center = view.center
        view.addSubview(confetti)
        setupConfettiView(confetti)
    }
    
    private func setupConfettiView(_ confetti: ConfettiView) {
        confetti.emit(with: [
            .shape(.circle, .purple),
            .shape(.triangle, .lightGray),
            .shape(.square, .systemPink)
        ]) { _ in
            let singinViewController = SingInViewController()
            singinViewController.modalPresentationStyle = .fullScreen
            self.present(singinViewController, animated: true)
        }
    }
}

