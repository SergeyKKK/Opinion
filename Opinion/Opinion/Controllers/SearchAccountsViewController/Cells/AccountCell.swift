//
//  CellAccounts.swift
//  Opinion
//
//  Created by Kalandarov Vakil on 07.05.2022.
//

import UIKit

final class AccountCell: UITableViewCell {
    
    //MARK: - Properties
    
    private let accountCellView = AccountCellView.shared
    let identefireCell = "accountCell"

    private lazy var avatarAccountsImage = UIImageView()
    private lazy var cellView = UIView()
    private lazy var informationStackView = UIStackView()
    
    private lazy var accountNameView = UIView()
    private lazy var publicationsView = UIView()
    private lazy var subscribersView = UIView()
    private lazy var subscriptionsView = UIView()
    
    private lazy var accountNameLabel = UILabel()
    private lazy var publicationsTitleLabel = UILabel()
    private lazy var publicationsCountLabel = UILabel()
    private lazy var subscribersTitleLabel = UILabel()
    private lazy var subscribersCountLabel = UILabel()
    private lazy var subscriptionsTitleLabel = UILabel()
    private lazy var subscriptionsCountLabel = UILabel()

    //MARK: - Private methods
    
    func setUpAccountCell() {
        self.backgroundColor = .clear
        createAccountCell()
    }
    
    private func createAccountCell() {
        setUpCellView()
        setUpAvatarAccountsImage()
        setUpInformationStackView()
        setUpInformationView()
    }
    
    private func setUpCellView() {
           contentView.addSubview(cellView)
           accountCellView.createCellView(cellView)
       }

    private func setUpAvatarAccountsImage() {
        cellView.addSubview(avatarAccountsImage)
        accountCellView.createAvatarAccountsImage(avatarAccountsImage)
    }
    
    private func setUpAccountNameView() {
        cellView.addSubview(accountNameView)
        accountCellView.createAccountNameView(accountNameView: accountNameView, avatarImage: avatarAccountsImage)
        setUpAccountNameLabel()
    }
    
    private func setUpAccountNameLabel() {
        accountNameView.addSubview(accountNameLabel)
        accountCellView.createAccountNameLabel(accountNameView: accountNameView, accountNameLabel: accountNameLabel, text: "@sereginiPhotki")
    }
    
    private func setUpInformationStackView() {
        cellView.addSubview(informationStackView)
        informationStackView.addArrangedSubview(publicationsView)
        informationStackView.addArrangedSubview(subscribersView)
        informationStackView.addArrangedSubview(subscriptionsView)
        accountCellView.createStackView(avatarImage: avatarAccountsImage, stackView: informationStackView)
    }
    
    private func setUpInformationView() {
        setUpAccountNameView()
        setUpPublicationsView()
        setUpSubscribersView()
        setUpSubscriptionsView()
    }
    
    private func setUpPublicationsView() {
        publicationsView.addSubview(publicationsTitleLabel)
        publicationsView.addSubview(publicationsCountLabel)
        accountCellView.createCountLabel(informationAccountView: publicationsView,
                                         countLabel: publicationsCountLabel,
                                         titleLabel: publicationsTitleLabel,
                                         countText: "15")
        accountCellView.createTitleLabel(informationAccountView: publicationsView,
                                         countLabel: publicationsCountLabel,
                                         titleLabel: publicationsTitleLabel,
                                         title: "Публикации")
    }
    
    private func setUpSubscribersView() {
        subscribersView.addSubview(subscribersCountLabel)
        subscribersView.addSubview(subscribersTitleLabel)
        accountCellView.createCountLabel(informationAccountView: subscribersView,
                                                     countLabel: subscribersCountLabel,
                                                     titleLabel: subscribersTitleLabel,
                                                     countText: "22.5k")
        accountCellView.createTitleLabel(informationAccountView: subscribersView,
                                         countLabel: subscribersCountLabel,
                                         titleLabel: subscribersTitleLabel,
                                         title: "Подписчики")
    }
    
    private func setUpSubscriptionsView() {
        subscriptionsView.addSubview(subscriptionsTitleLabel)
        subscriptionsView.addSubview(subscriptionsCountLabel)
        accountCellView.createCountLabel(informationAccountView: subscriptionsView,
                                                     countLabel: subscriptionsCountLabel,
                                                     titleLabel: subscriptionsTitleLabel,
                                                     countText: "344")
        accountCellView.createTitleLabel(informationAccountView: subscriptionsView,
                                         countLabel: subscriptionsCountLabel,
                                         titleLabel: subscriptionsTitleLabel,
                                         title: "Подписки")
    }
}
