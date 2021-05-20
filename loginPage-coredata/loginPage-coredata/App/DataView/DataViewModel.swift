//
//  DataViewModel.swift
//  loginPage-coredata
//
//  Created by Lau on 20/05/2021.
//

import Foundation

protocol DataViewModelDelegate: AnyObject {
    func showNextView()
}

final class DataViewModel {
    
    // MARK: - Properties
    
    private weak var delegate: DataViewModelDelegate?
    
    // MARK: - Initializer
    
    init(delegate: DataViewModelDelegate?) {
        self.delegate = delegate
    }
    
    // MARK: - Output
    
    var labelText: ((String) -> Void)?
    
    // MARK: - Input
    
    func didPresButton() {
        delegate?.showNextView()
    }
    
}

