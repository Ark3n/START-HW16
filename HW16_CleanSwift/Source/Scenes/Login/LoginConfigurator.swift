//
//  LoginConfigurator.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit

final class LoginConfigurator {
    static func configure(viewController: LoginViewController) -> LoginViewController {
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        presenter.viewController = viewController
        interactor.presenter = presenter
        viewController.interactor = interactor
        return viewController
    }
}
