//
//  SearchAccountsView.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 05.05.2022.
//

import UIKit
import SnapKit

final class SearchAccountsView {
    
    //MARK: - Public properties
    
    static let shared = SearchAccountsView()
    
    //MARK: - setup UI
    
    func createNavigationController(_ navigationController: UIViewController, searchController: UISearchController) {
        navigationController.navigationItem.title = "Account"
        navigationController.navigationItem.hidesBackButton = true
        navigationController.navigationController?.navigationBar.prefersLargeTitles = true
        navigationController.navigationItem.searchController = searchController
    }
    
    func createAccountsTable(_ tableView: UITableView) {
        tableView.keyboardDismissMode = .onDrag
        tableView.snp.makeConstraints { make in
            make.top.equalTo(UISearchBar())
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
}

