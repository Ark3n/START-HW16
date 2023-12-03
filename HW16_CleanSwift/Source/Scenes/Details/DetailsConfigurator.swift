//
//  DetailsConfigurator.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit

final class DeatailsConfigurator {
    static func configure(viewController: DetailsController) -> DetailsController {
        let interactor = DetailsInteractor()
        let router = DeatilsRouter()
        let presentor = DetailsPresenter()
        presentor.viewController = viewController
        interactor.presenter = presentor
        router.dataStore = interactor
        viewController.interactor = interactor
        viewController.router = router
        return viewController
    }
}
