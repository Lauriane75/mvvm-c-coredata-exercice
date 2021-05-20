//
//  ViewController.swift
//  loginPage-coredata
//
//  Created by Lau on 19/05/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Outlets

    var stackView = UIStackView()
    
    let imageBackground: UIImageView
    
    let shadowView: CustomView
    
    let subscribebutton: CustomButton
    
    let passwordLabel: CustomLabel
    
    let questionMarkButton: UIButton
    
    let passwordTextField: CustomTextField
    
    let emailTextField: CustomTextField
    
    let logoImageView: UIImageView
    
    let titleLabel: CustomLabel

    // MARK: - Properties
    
    var viewModel: LoginViewModel!
        
    // MARK: - View life cycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        self.imageBackground = UIImageView(imageName: "img-back")
        self.shadowView = CustomView(backgroundUIColor: .black.withAlphaComponent(0.3))
        self.subscribebutton = CustomButton(textColor: .white, withBackgroundColor: .black, font: Constants.font.font20Bold, cornerRadius: 15)
        self.passwordLabel = CustomLabel(color: .white, textFont: Constants.font.font15, textAlignMode: .left)
        self.questionMarkButton = UIButton()
        self.passwordTextField = CustomTextField(typeKeyboard: .default, fontSize: Constants.font.font18, cornerRadius: 15, colorBackground: .clear, placeHolderString: "Mot de passe")
        self.emailTextField = CustomTextField(typeKeyboard: .emailAddress, fontSize: Constants.font.font18, cornerRadius: 15, colorBackground: .clear, placeHolderString: "Adresse email")
        self.logoImageView = UIImageView(imageName: "logo")
        self.titleLabel = CustomLabel(color: .white, textFont: Constants.font.font20Bold, textAlignMode: .left)
        
        stackView.addArrangedSubview(imageBackground)
        stackView.addArrangedSubview(shadowView)
        stackView.addArrangedSubview(subscribebutton)
        stackView.addArrangedSubview(passwordLabel)
        stackView.addArrangedSubview(questionMarkButton)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(logoImageView)
        stackView.addArrangedSubview(titleLabel)
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
        super.viewDidLoad()
        
        view.addSubview(imageBackground)
        view.addSubview(shadowView)
        view.addSubview(subscribebutton)
        view.addSubview(passwordLabel)
        view.addSubview(questionMarkButton)
        view.addSubview(passwordTextField)
        view.addSubview(emailTextField)
        view.addSubview(logoImageView)
        view.addSubview(titleLabel)
        
        createElementConstraint()
        bind(to: viewModel)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Functions
    
    fileprivate func bind(to viewModel: LoginViewModel) {
        subscribebutton.setTitle("S'identifier", for: .normal)
        passwordLabel.text = "Mot de passe oublié"
        questionMarkButton.setImage(UIImage(named: "question-icon"), for: .normal)
        passwordTextField.setPaddinfLeft()
        emailTextField.setPaddinfLeft()
        titleLabel.text = "S'identifier"
    }
    
    // MARK: - Action
    
    @objc func didPressSubscribeButton() {
        viewModel.didPressSubscribeButton()
    }
    
    @objc func hideKeyboard() {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
}

// MARK: - Constraints

extension LoginViewController {
    
 private func createElementConstraint() {
        // imageBackground
        self.imageBackground.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.imageBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.imageBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.imageBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // shadowView
        self.shadowView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.shadowView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.shadowView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        self.shadowView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // subscribebutton
        self.subscribebutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        self.subscribebutton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        self.subscribebutton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        self.subscribebutton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        self.subscribebutton.addTarget(self, action: #selector(didPressSubscribeButton), for: .touchUpInside)
        
        // passwordLabel
        self.passwordLabel.bottomAnchor.constraint(equalTo: subscribebutton.topAnchor, constant: -28).isActive = true
        self.passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28).isActive = true
        self.passwordLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
    
        // questionMarkButton
        self.questionMarkButton.bottomAnchor.constraint(equalTo: subscribebutton.topAnchor, constant: -28).isActive = true
        self.questionMarkButton.leadingAnchor.constraint(equalTo: passwordLabel.trailingAnchor).isActive = true
        self.questionMarkButton.frame.size = CGSize(width: 80, height: 80)
    
        // passwordTextField
        self.passwordTextField.bottomAnchor.constraint(equalTo: passwordLabel.topAnchor, constant: -20).isActive = true
        self.passwordTextField.leadingAnchor.constraint(equalTo: subscribebutton.leadingAnchor, constant: 0).isActive = true
        self.passwordTextField.trailingAnchor.constraint(equalTo: subscribebutton.trailingAnchor, constant: 0).isActive = true
        self.passwordTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true

        // emailTextField
        self.emailTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20).isActive = true
        self.emailTextField.leadingAnchor.constraint(equalTo: subscribebutton.leadingAnchor, constant: 0).isActive = true
        self.emailTextField.trailingAnchor.constraint(equalTo: subscribebutton.trailingAnchor, constant: 0).isActive = true
        self.emailTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
    
        // logoImageView
        self.logoImageView.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -30).isActive = true
        self.logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.logoImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        self.logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4).isActive = true


        // titleLabel
        self.titleLabel.bottomAnchor.constraint(equalTo: logoImageView.topAnchor, constant: -8).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: logoImageView.centerXAnchor).isActive = true
    }


}


