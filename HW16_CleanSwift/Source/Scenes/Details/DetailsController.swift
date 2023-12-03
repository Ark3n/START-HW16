//
//  DetailsController.swift
//  HW16_CleanSwift
//
//  Created by Arken Sarsenov on 03.12.2023.
//

import UIKit
protocol DetailsDisplayLogic: AnyObject {
    func displayUser(user: userModel)
}
final class DetailsController: UIViewController {
    
    var router: (DetailsRoutingLogic & DetailsDataPassingProtocol)?
    var interactor: (DetailsBusinessLogic & DetailsStoreProtocol)?
    var detailsView = DetailsView()
    
    override func loadView() {
        view = detailsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.fetchDetails()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
    }
}

extension DetailsController: DetailsDisplayLogic {
    func displayUser(user: userModel) {
        detailsView.configureDetailsView(user: user)
    }
}
