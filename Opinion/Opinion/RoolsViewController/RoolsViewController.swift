//
//  RoolsViewController.swift
//  Opinion
//
//  Created by Serega Kushnarev on 22.04.2022.
//

import UIKit

class RoolsViewController: UIViewController {
    
    //MARK: - Properties
    
    private let roolsView = RoolsView.shared
    
    private lazy var titleLabel = UILabel()
    private lazy var roolsTextView = UITextView()

    //MARK: - Life circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitleLabel(titleLabel)
        setupRoolsTextView(roolsTextView)
        
        setupUI()

    }
    
    //MARK: - Private methods
    
    private func setupUI() {
        view.backgroundColor = .white
        roolsView.createTitleLabel(titleLabel: titleLabel)
        roolsView.createRoolsTextView(titleLabel: titleLabel, roolsTextView: roolsTextView)
    }
    
    private func setupTitleLabel(_ label: UILabel) {
        view.addSubview(label)
    }
    
    private func setupRoolsTextView(_ textView: UITextView) {
        view.addSubview(textView)
    }
}
