//
//  Extension.swift
//  loginPage-coredata
//
//  Created by Lau on 19/05/2021.
//

import UIKit

extension UITextField {
    
    func setPaddinfLeft() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
