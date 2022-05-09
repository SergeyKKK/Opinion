//
//  SearchAccountsViewController.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 05.05.2022.
//

import UIKit

final class SearchAccountsViewController: UIViewController {
    
    //MARK: - Properties
    
    private let searchAccountView = SearchAccountsView.shared
    
    private lazy var accountsTableView = UITableView()
    private lazy var searchAccountsController = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAccountTable(accountsTableView)
        createNavControll()
    }
    
    //MARK: - Private methods
    
    private func createNavControll() {
        searchAccountView.createNavigationController(self, searchController: searchAccountsController)
        
    }
    
    private func setUpAccountTable(_ tableView: UITableView) {
        view.addSubview(tableView)
        tableView.register(AccountCell.self, forCellReuseIdentifier: AccountCell().identefireCell)
        tableView.dataSource = self
        tableView.delegate = self
        searchAccountView.createAccountsTable(tableView)
    }
}
