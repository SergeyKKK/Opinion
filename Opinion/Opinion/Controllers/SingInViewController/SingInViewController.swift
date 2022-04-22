//
//  SingInViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit

final class SingInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setGradientBackground(redTop: 220.0/255.0, greenTop: 36.0/255.0,
                              blueTop: 48.0/255.0, alphaTop: 1.0,
                              redBottom: 123.0/255.0, greenBottom: 67.0/255.0,
                              blueBottom: 151.0/255.0, alphaBottom: 1.0)
    }
}
