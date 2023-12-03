//
//  DetailsPresenter.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import Foundation

protocol DetailsPresentationLogic: AnyObject {
    func presentUser(user: userModel)
}

final class DetailsPresenter: DetailsPresentationLogic {
    weak var viewController: DetailsDisplayLogic?
    func presentUser(user: userModel) {
        viewController?.displayUser(user: user)
    }

}
