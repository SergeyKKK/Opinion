//
//  RoolsView.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit
import SnapKit

final class RoolsView {
    
    static let shared = RoolsView()
    
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
        roolsTextView.text = "1. Правило 1 \n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2\n2. Правило 2"
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
