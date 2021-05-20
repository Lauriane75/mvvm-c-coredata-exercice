//
//  CustomElement.swift
//  loginPage-coredata
//
//  Created by Lau on 19/05/2021.
//

import UIKit

class CustomView: UIView {
    convenience init(backgroundUIColor: UIColor) {
        self.init()
        backgroundColor = backgroundUIColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}

class CustomLabel: UILabel {
    convenience init(color: UIColor, textFont: UIFont, textAlignMode: NSTextAlignment) {
        self.init()
        textColor = color
        font = textFont
        numberOfLines = 0
        textAlignment = textAlignMode
        translatesAutoresizingMaskIntoConstraints = false
    }
}

class CustomButton: UIButton {
    convenience init(textColor: UIColor, withBackgroundColor: UIColor?, font: UIFont, cornerRadius: CGFloat?) {
        self.init()
        setTitleColor(textColor, for: .normal)
        titleLabel?.font = font
        backgroundColor = withBackgroundColor
        layer.cornerRadius = cornerRadius ?? 0
        translatesAutoresizingMaskIntoConstraints = false
    }
}

class CustomTextField: UITextField {
    convenience init(typeKeyboard: UIKeyboardType, fontSize: UIFont, cornerRadius: CGFloat, colorBackground: UIColor, placeHolderString: String) {
        self.init()
        textColor = .white
        font = fontSize
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        keyboardAppearance = .dark
        keyboardType = typeKeyboard
        layer.cornerRadius = cornerRadius
        textAlignment = .left
        backgroundColor = colorBackground
        attributedPlaceholder = NSAttributedString(string: placeHolderString, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIImageView {
    convenience init(imageName: String) {
        self.init()
        image = UIImage(named: imageName)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension UIStackView {
    convenience init(name: String) {
        self.init()
        axis = .vertical
        alignment = .fill
        distribution = .fill
        translatesAutoresizingMaskIntoConstraints = false
    }
}

