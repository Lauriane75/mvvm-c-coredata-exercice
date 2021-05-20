//
//  Screens.swift
//  loginPage-coredata
//
//  Created by Lau on 20/05/2021.
//

import UIKit

class Screens {
    
    func createLoginViewController(delegate: LoginViewModelDelegate?) -> UIViewController {
        let viewController = LoginViewController()
        let viewModel = LoginViewModel(delegate: delegate)
        viewController.viewModel = viewModel
        return viewController
    }
    
    func createDataViewController(delegate: DataViewModelDelegate?) -> UIViewController {
        let viewController = DataViewController()
        let viewModel = DataViewModel(delegate: delegate)
        viewController.viewModel = viewModel
        return viewController
    }
}
