//
//  SearchAccountsView.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 05.05.2022.
//

import UIKit
import SnapKit

class SearchAccountsView {
    
    //MARK: - Public properties
    
    static let shared = SearchAccountsView()
    
    //MARK: - setup UI
    
    func createNavControll(_ navControll: UIViewController, searchBar: UISearchController) {
        navControll.navigationItem.title = "Account"
        navControll.navigationItem.hidesBackButton = true
        navControll.navigationController?.navigationBar.prefersLargeTitles = true
        navControll.navigationItem.searchController = searchBar
    }
    
    func createAccountsTable(_ accountsTable: UITableView) {
        accountsTable.keyboardDismissMode = .onDrag
        accountsTable.snp.makeConstraints { make in
            make.top.equalTo(UISearchBar())
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
}

