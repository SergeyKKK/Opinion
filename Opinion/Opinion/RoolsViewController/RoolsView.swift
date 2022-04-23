//
//  RoolsView.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit
import SnapKit

final class RoolsView {
    
    //MARK: - Public properties
    
    static let shared = RoolsView()
    
    //MARK: - setup UI
    
    func createTitleLabel(titleLabel: UILabel) {
        titleLabel.text = "Правила"
        titleLabel.font = .systemFont(ofSize: 24, weight: .medium)
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.trailing.equalToSuperview()
            make.top.equalTo(20)
            make.height.equalTo(50)
        }
    }
    
    func createRoolsTextView(titleLabel: UILabel, roolsTextView: UITextView) {
        roolsTextView.text = .rools
        roolsTextView.font = .systemFont(ofSize: 15, weight: .semibold)
        roolsTextView.isEditable = false
        roolsTextView.showsVerticalScrollIndicator = false
        roolsTextView.snp.makeConstraints { make in
            make.leading.equalTo(10)
            make.trailing.equalTo(-10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.bottom.equalTo(-10)
        }
    }
}

