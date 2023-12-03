//
//  LoginView.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit
import SnapKit

protocol LoginViewDelegate: AnyObject {
    func loginButtonTapped(username: String, password: String)
}

final class LoginView: UIView {
    
    // MARK: - Properties
    weak var delegate: LoginViewDelegate?
    private lazy var loginTextField: UITextField = {
        let login = UITextField()
        login.clipsToBounds = true
        login.borderStyle = .roundedRect
        login.layer.borderWidth = 2
        login.layer.borderColor = UIColor.red.cgColor
        login.textColor = .black
        login.textAlignment = .left
        login.placeholder = "Enter your email"
        return login
    }()

    private lazy var passwordTextField: UITextField = {
        let password = UITextField()
        password.clipsToBounds = true
        password.borderStyle = .roundedRect
        password.layer.borderWidth = 2
        password.layer.borderColor = UIColor.red.cgColor
        password.borderStyle = .roundedRect
        password.textAlignment = .left
        password.placeholder = "Enter password"
        password.isSecureTextEntry = true
        return password
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [loginTextField, passwordTextField, loginButton])
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }()
    
    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(stackView)
    }

    @objc private func loginTapped() {
        guard let username = loginTextField.text, let password = passwordTextField.text else { return }
        delegate?.loginButtonTapped(username: username, password: password)
    }
    
    private func setupConstraints() {
        stackView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(50)
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().offset(-50)
        }
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}

