//
//  ViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit
import ConfettiView

final class WelcomeViewController: UIViewController {
    
    
    //MARK: - Properties
    
    private let welcomeView = WelcomeView.shared
    
    private lazy var confettiView = ConfettiView()
    private lazy var launchImageView = UIImageView()
    
    //MARK: - Life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        setupConfettiView(confettiView)
        setupLaunchImage(launchImageView)
    }
    
    //MARK: - Private methods
    
    private func setupConfettiView(_ confetti: ConfettiView) {
        launchImageView.addSubview(confetti)
        welcomeView.createConfettiView(confetti, view: view)
        confetti.emit(with: [
            .shape(.circle, .purple),
            .shape(.triangle, .lightGray),
            .shape(.square, .systemPink)
        ]) { _ in
            let singinViewController = SingInViewController()
            self.navigationController?.pushViewController(singinViewController, animated: true)
        }
    }
    
    private func setupLaunchImage(_ imageView: UIImageView) {
        imageView.image = UIImage(named: "Launch")
        view.addSubview(imageView)
        welcomeView.createLaunchImage(imageView, view: view)
    }
}

