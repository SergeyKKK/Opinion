//
//  TableViewTableViewCell.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 09.05.2022.
//

import UIKit

extension SearchAccountsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: AccountCell().identefireCell, for: indexPath) as? AccountCell {
            cell.setUpAccountCell()
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}
