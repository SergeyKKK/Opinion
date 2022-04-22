//
//  SingInView.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit
import SnapKit

class SingInView {
    
    static let shared = SingInView()

    func createExitOrRegistrationButton(_ button: UIButton) {
        button.setTitle("Вход/Регистрация", for: .normal)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(30)
        }
    }
    
    func createShowRoolsButton(_ button: UIButton, topButton: UIButton) {
        button.setTitle("Правила", for: .normal)
        button.snp.makeConstraints { make in
            make.top.equalTo(topButton.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
        }
    }
}
