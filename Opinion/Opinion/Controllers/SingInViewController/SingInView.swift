//
//  SingInView.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit
import SnapKit

class SingInView {
    
    //MARK: - Public properties
    
    static let shared = SingInView()
    
    //MARK: - setup UI
    
    func createEntranceButton(_ entranceButton: UIButton) {
        entranceButton.setTitle("Вход", for: .normal)
        entranceButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(30)
        }
    }
    
    func createShowRoolsButton(_ showRoolsButton: UIButton) {
        showRoolsButton.setTitle("Правила", for: .normal)
        showRoolsButton.setTitleColor(.lightGray, for: .normal)
        showRoolsButton.snp.makeConstraints { make in
            make.bottom.equalTo(-50)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
        }
    }
}
