//
//  SearchAccountsViewController.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 05.05.2022.
//

import UIKit

final class SearchAccountsViewController: UIViewController {
    
    //MARK: - Properties
    
    private let searchAccountsView = SearchAccountsView.shared
    
    private lazy var accountsTableView = UITableView()
    private lazy var searchAccountsController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAccountTableView(accountsTableView)
        setUpNavigationControll()
    }
    
    //MARK: - Private methods
    
    private func setUpNavigationControll() {
        searchAccountsView.createNavigationController(self, searchController: searchAccountsController)
    }
    
    private func setUpAccountTableView(_ tableView: UITableView) {
        view.addSubview(tableView)
        tableView.register(AccountCell.self, forCellReuseIdentifier: AccountCell().identefireCell)
        tableView.dataSource = self
        tableView.delegate = self
        searchAccountsView.createAccountsTableView(tableView)
    }
}
