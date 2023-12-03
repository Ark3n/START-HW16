//
//  ViewController.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit

protocol LoginDisplayLogic: AnyObject {
    func displayUser()
    func userNotFound()
}
final class LoginViewController: UIViewController {
    // MARK: - properties
    private let loginView = LoginView()
    var interactor: LoginBusinessLogic?
    
    // MARK: - ViewLifecycle
    override func loadView() {
        view = loginView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        loginView.delegate = self
    }
}
// MARK: - ViewDelegate
extension LoginViewController: LoginViewDelegate {
    func loginButtonTapped(username: String, password: String) {
        let user = LocalUserModel(username: username, password: password)
        interactor?.fetchUser(user: user)
    }
}

extension LoginViewController: LoginDisplayLogic {
    func displayUser() {
        navigationController?.pushViewController(DetailsController(), animated: true)
    }
    func userNotFound() {
        let alertController = UIAlertController(title: "Login Failed", message: "Username or password incorrect", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        self.navigationController?.present(alertController, animated: true)
    }
}
