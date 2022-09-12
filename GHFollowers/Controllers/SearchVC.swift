//
//  ViewController.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/10/22.
//

import UIKit

class SearchVC: UIViewController {
    //MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "gh-logo")
        return iv
    }()
    
    private let usernameTextField = GFTextFeild()
     
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: - Selectors
    
    
    //MARK: - Helpers
    private func configureUI(){
        view.addSubview(logoImageView)
        
        logoImageView.center(inView: view, yConstant: -200)
        logoImageView.setDimensions(width: 200, height: 200)
        
        
        view.addSubview(usernameTextField)
        
        usernameTextField.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 25, paddingLeft: 12, paddingRight: 12, height: 50)
        
        view.addSubview(callToActionButton)
        
        callToActionButton.anchor(top: usernameTextField.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 25, paddingLeft: 12, paddingRight: 12, height: 50)
        
    }
}

