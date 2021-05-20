//
//  DataViewController.swift
//  loginPage-coredata
//
//  Created by Lau on 19/05/2021.
//

import UIKit

class DataViewController: UIViewController {
    
    // MARK: - Properties
    
    var viewModel: DataViewModel!

    // MARK: - Outlets

    var stackView = UIStackView()

    let titleLabel: CustomLabel
    
    let loadButton: CustomButton

    // MARK: - View life cycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {

        self.titleLabel = CustomLabel(color: .white, textFont: Constants.font.font20Bold, textAlignMode: .center)
        
        self.loadButton = CustomButton(textColor: .white, withBackgroundColor: .orange, font: Constants.font.font18, cornerRadius: 15)

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(loadButton)

        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        view.addSubview(titleLabel)
        
        view.addSubview(loadButton)

        createElements()
        
        titleLabel.backgroundColor = .red
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        bind(to: viewModel)
    }
    
    // MARK: - Action

    @objc func didPressLoadData() {
        print("load data")
    }

    // MARK: - Private Functions

    private func bind(to viewModel: DataViewModel) {
        titleLabel.text = "Hello World"
        loadButton.setTitle("Load Data", for: .normal)
    }
}

extension DataViewController {

    // MARK: - Constraints

    func createElements() {

        // titleLabel
        self.titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        self.titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        self.titleLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true

        // loadButton
        self.loadButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -28).isActive = true
        self.loadButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        self.loadButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        self.loadButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        self.loadButton.addTarget(self, action: #selector(didPressLoadData), for: .touchUpInside)

    }


}
