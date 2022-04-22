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
    
    func createShowRoolsButton(_ button: UIButton) {
        button.setTitle("Правила", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.snp.makeConstraints { make in
            make.bottom.equalTo(-50)
            make.centerX.equalToSuperview()
            make.height.equalTo(10)
        }
    }
}
