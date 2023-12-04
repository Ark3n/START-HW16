//
//  DetailsRouter.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit

protocol DetailsRoutingLogic {
    
}
protocol DetailsDataPassingProtocol {
    var dataStore: DetailsStoreProtocol? { get }
}

class DeatilsRouter: DetailsRoutingLogic, DetailsDataPassingProtocol {
    weak var viewController: UIViewController?
    weak var dataStore: DetailsStoreProtocol?
}
