//
//  DetailsInteractor.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import Foundation

protocol DetailsBusinessLogic {
    func fetchDetails()
}
protocol DetailsStoreProtocol: AnyObject {
    var user: BackEndUserModel { get set }
}

class DetailsInteractor: DetailsBusinessLogic, DetailsStoreProtocol {
    var presenter: DetailsPresentationLogic?
    
    var user: BackEndUserModel = BackEndUserModel(user: "test",
                                                  password: "test",
                                                  name: "test",
                                                  secondname: "test",
                                                  mail: "test",
                                                  phone: 0)
    
    func fetchDetails() {
        presenter?.presentUser(user: userModel(firstname: user.name, secondname: user.secondname))
    }
}
