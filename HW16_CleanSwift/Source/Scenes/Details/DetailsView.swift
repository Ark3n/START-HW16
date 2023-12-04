//
//  DetailsView.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit
import SnapKit

final class DetailsView: UIView {
    
    // MARK: - Properties
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var secondNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var phoneLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - View Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - SetupUI
    private func setupUI() {
        let stackView = UIStackView(arrangedSubviews: [nameLabel, secondNameLabel, emailLabel, phoneLabel])
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(100)
        }
    }
    
    func configureDetailsView(user: userModel) {
        nameLabel.text = "First name: \(user.firstname)"
        secondNameLabel.text = "Second name: \(user.secondname)"
        emailLabel.text = "Email: \(user.email)"
        phoneLabel.text = "Phone: \(user.number)"
    }
}
