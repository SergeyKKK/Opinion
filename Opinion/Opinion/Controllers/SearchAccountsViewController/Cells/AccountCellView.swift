//
//  AccountCellView.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 11.05.2022.
//

import UIKit
import SnapKit

final class AccountCellView {
    
    //MARK: - Public properties
    
    static let shared = AccountCellView()
    
    //MARK: - setup UI
    
    func createCellView(_ view: UIView) {
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = false
        view.layer.shadowRadius = 20
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius = 4.0
        view.backgroundColor = .white
        view.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.left.equalTo(5)
            make.right.equalTo(-5)
            make.bottom.equalTo(-5)
        }
    }
    
    func createAvatarAccountsImage(_ ImageView: UIImageView) {
            ImageView.image = UIImage(named: "avatarDefault")
            ImageView.layer.cornerRadius = 15
            ImageView.clipsToBounds = true
            ImageView.snp.makeConstraints { make in
                make.top.equalTo(10)
                make.left.equalTo(10)
                make.bottom.equalTo(-10)
                make.width.equalTo(60)
            }
        }
    
    func createAccountNameView(accountNameView: UIView, avatarImage: UIImageView) {
        accountNameView.snp.makeConstraints { make in
            make.left.equalTo(avatarImage.snp.right).offset(5)
            make.top.equalTo(5)
            make.bottom.equalTo(-5)
            make.width.equalTo(100)
        }
    }
    
    func createAccountNameLabel(accountNameView: UIView, accountNameLabel: UILabel, text: String) {
        accountNameLabel.text = text
        accountNameLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 13.0)
        accountNameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(accountNameView.snp.centerY)
            make.left.equalTo(accountNameView.snp.left)
            make.width.equalTo(accountNameView)
        }
    }
    
    func createStackView(avatarImage: UIImageView, stackView: UIStackView) {
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 3
        stackView.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.left.equalTo(avatarImage.snp.right).offset(110)
            make.right.equalTo(-5)
            make.bottom.equalTo(-5)
        }
    }
    
    func createCountLabel(informationAccountView: UIView, countLabel: UILabel, titleLabel:UILabel, countText: String) {
        countLabel.text = countText
        countLabel.textAlignment = .center
        countLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 9.0)
        countLabel.snp.makeConstraints { make in
            make.top.equalTo(informationAccountView.snp.top).offset(10)
            make.width.equalTo(informationAccountView)
            make.centerX.equalTo(titleLabel.snp.centerX)
        }
    }
    
    func createTitleLabel(informationAccountView: UIView, countLabel: UILabel, titleLabel:UILabel, title: String) {
        titleLabel.text = title
        titleLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 9.0)
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(countLabel.snp.bottom).offset(1)
            make.left.equalTo(informationAccountView.snp.left)
            make.width.equalTo(informationAccountView)
        }
    }
}
