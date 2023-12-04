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
    // MARK: - Properties
    var router: (DetailsRoutingLogic & DetailsDataPassingProtocol)?
    var interactor: (DetailsBusinessLogic & DetailsStoreProtocol)?
    var detailsView = DetailsView()
    
    // MARK: - ViewLifecycle
    override func loadView() {
        view = detailsView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: SetupUI
    private func setupUI() {
        view.backgroundColor = .systemBackground
        interactor?.fetchDetails()
    }
}

extension DetailsController: DetailsDisplayLogic {
    func displayUser(user: userModel) {
        detailsView.configureDetailsView(user: user)
    }
}
