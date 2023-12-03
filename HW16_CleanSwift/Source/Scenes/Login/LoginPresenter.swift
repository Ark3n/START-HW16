//
//  LoginPresenter.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

protocol LoginPresentationLogic: AnyObject {
    func presentUser(user: BackEndUserModel)
    func userNotFound()
}

final class LoginPresenter: LoginPresentationLogic {
    weak var viewController: LoginDisplayLogic?
    
    func presentUser(user: BackEndUserModel) {
        viewController?.displayUser()
    }
    
    func userNotFound() {
        viewController?.userNotFound()
    }
}