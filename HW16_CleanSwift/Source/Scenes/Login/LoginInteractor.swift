//
//  LoginInteractor.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

protocol LoginBusinessLogic: AnyObject {
    func fetchUser(user: LocalUserModel)
}

final class LoginInteractor: LoginBusinessLogic {
    var presenter: LoginPresentationLogic?
    
    func fetchUser(user: LocalUserModel) {
        let usersInDataBase = BackEndUsersGroup.users
        for item in usersInDataBase {
            if item.user == user.username && item.password == user.password {
                presenter?.presentUser(user: item)
                break
            }
            else {
                presenter?.userNotFound()
            }
        }
    }
}
