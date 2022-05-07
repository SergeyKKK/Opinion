//
//  EntranceViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 25.04.2022.
//

import UIKit

class EntranceViewController: UIViewController {
    
    //все сделано временно, дальше функционал будет дорабатываться
    
    //MARK: - Properties
    
    private lazy var button = UIButton()
    
    //MARK: - Life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        view.backgroundColor = .white
        
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.center = view.center
        button.backgroundColor = .yellow
        button.setTitle("переход на экран поиска", for: .normal)
        button.addTarget(self, action: #selector(openSearch), for: .touchUpInside)
        view.addSubview(button)
    }
    
    //MARK: - Private methods
    
    @objc private func openSearch() {
        let searchAccountsController = SearchAccountsViewController()
        navigationController?.pushViewController(searchAccountsController, animated: true)
//        searchAccountsController.modalPresentationStyle = .fullScreen
//        present(searchAccountsController, animated: true, completion: nil)

    }
    
}
