//
//  LoginViewCoordinator.swift
//  loginPage-coredata
//
//  Created by Lau on 20/05/2021.
//

import UIKit

class LoginViewCoordinator {
   
    // MARK: - Properties

    private let screens: Screens
    
    private let navigationController: UINavigationController
    
    // MARK: - Initializer
    
    init(screens: Screens, navigationController: UINavigationController) {
        self.screens = screens
        self.navigationController = navigationController
    }
}

// MARK: - CoordinatorProtocol

extension LoginViewCoordinator: CoordinatorProtocol {
    
    // MARK: - Start
    
    func start() {
        showLoginView()
    }
    
    // MARK: - Private Functions
    
    private func showLoginView() {
        let viewController = screens.createLoginViewController(delegate: self)
        navigationController.pushViewController(viewController, animated: false)
    }
    
    private func createDataView() {
        let viewController = screens.createDataViewController(delegate: self)
        navigationController.pushViewController(viewController, animated: false)
    }
}

extension LoginViewCoordinator: LoginViewModelDelegate {
    func showDataView() {
        createDataView()
    }
}

extension LoginViewCoordinator: DataViewModelDelegate {
    func showNextView() {
        
    }
}

