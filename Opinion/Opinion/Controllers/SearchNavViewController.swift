//
//  SearchNavViewController.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 07.05.2022.
//

import UIKit

class SearchNavViewController: UINavigationController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setViewControllers([SearchAccountsViewController()], animated: true)
        cr()
    }
    
    func cr() -> UIViewController {
        let sh = SearchNavViewController(rootViewController: SearchAccountsViewController())
        return sh
    }
    

  
}
