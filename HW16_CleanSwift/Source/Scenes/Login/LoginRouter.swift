//
//  LoginRouter.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit

protocol LoginRouterLogic: AnyObject {
    func navigateToDeatailsVC(user: BackEndUserModel)
}

final class LoginRouter: LoginRouterLogic {
    weak var viewController: UIViewController?
    
    func navigateToDeatailsVC(user: BackEndUserModel) {
        let vc = DeatailsConfigurator.configure(viewController: DetailsController())
        vc.router?.dataStore?.user = user
        self.viewController?.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
