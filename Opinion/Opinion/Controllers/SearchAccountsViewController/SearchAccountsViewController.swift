//
//  SearchAccountsViewController.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 05.05.2022.
//

import UIKit

class SearchAccountsViewController: UIViewController {
    
    //MARK: - Properties
    
    private let searchView = SearchAccountsView.shared
    let identefire = "my cell"
    
    private lazy var accountsTable = UITableView()
    private lazy var searchBar = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSearchTable(accountsTable)
        createNavControll()
    }
    
    //MARK: - Private methods
    
    private func createNavControll() {
        searchView.createNavControll(self, searchBar: searchBar)
        
    }
    
    private func setUpSearchTable(_ table: UITableView) {
        view.addSubview(table)
        table.register(AccountCell.self, forCellReuseIdentifier: identefire)
        table.dataSource = self
        table.delegate = self
        searchView.createAccountsTable(table)
    }
    
}

//MARK: - UITableViewDataSource, UITableViewDelegate

extension SearchAccountsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: identefire, for: indexPath) as? AccountCell{
            cell.createAccountCell()
            return cell
        }
        return UITableViewCell()
    }
    
    
}
