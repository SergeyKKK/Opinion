//
//  SingInViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit

final class SingInViewController: UIViewController {
    
    //MARK: - Properties
    
    private let singInView = SingInView.shared
    
    private lazy var exitOrRegistrationButton = UIButton()
    private lazy var showRoolsButton = UIButton()
    
    //MARK: - Life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupExitOrRegistrationButton(exitOrRegistrationButton)
        setupShowRoolsButton(showRoolsButton,
                             topButton: exitOrRegistrationButton)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setGradientBackground(redTop: 220.0/255.0, greenTop: 36.0/255.0,
                              blueTop: 48.0/255.0, alphaTop: 1.0,
                              redBottom: 123.0/255.0, greenBottom: 67.0/255.0,
                              blueBottom: 151.0/255.0, alphaBottom: 1.0)
    }
    
    //MARK: - Private methods
    
    private func setupExitOrRegistrationButton(_ button: UIButton) {
        view.addSubview(button)
        singInView.createExitOrRegistrationButton(button)
        
    }
    
    private func setupShowRoolsButton(_ button: UIButton, topButton: UIButton) {
        view.addSubview(button)
        singInView.createShowRoolsButton(button, topButton: topButton)
        
    }
}
