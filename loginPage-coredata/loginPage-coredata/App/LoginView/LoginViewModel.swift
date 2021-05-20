//
//  LoginViewModel.swift
//  loginPage-coredata
//
//  Created by Lau on 19/05/2021.
//

import Foundation

protocol LoginViewModelDelegate: AnyObject {
    func showDataView()
}

final class LoginViewModel {
    
    // MARK: - Properties
    
    private weak var delegate: LoginViewModelDelegate?
    
    // MARK: - Initializer
    
    init(delegate: LoginViewModelDelegate?) {
        self.delegate = delegate
    }
    
    // MARK: - Output
    
    var labelText: ((String) -> Void)?
    
    // MARK: - Input
    
    func didPressSubscribeButton() {
        delegate?.showDataView()
    }

}
