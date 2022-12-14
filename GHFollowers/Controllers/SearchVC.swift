//
//  ViewController.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/10/22.
//

import UIKit

class SearchVC: UIViewController, UITextFieldDelegate {
    //MARK: - Properties
    
    
    //Basic github logo image
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "gh-logo")
        return iv
    }()
    
    //Search
    private let usernameTextField = GFTextFeild()
       
     
    private lazy var callToActionButton: UIButton = {
        let button = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
        button.addTarget(self, action: #selector(handleFave), for: .touchUpInside)
        
       return button
    }()
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dismissKeyboardHelper()
        usernameTextField.delegate = self
        configureUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: - Selectors
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @objc func handleFave(){
        fetchUserFollower()
        ToFaveListVCHelper()
        
        
        
    }
    
    
    //MARK: - Helpers
    private func configureUI(){
        view.backgroundColor = .systemBackground
        
        view.addSubview(logoImageView)
        
        logoImageView.center(inView: view, yConstant: -200)
        logoImageView.setDimensions(width: 200, height: 200)
        
        
        view.addSubview(usernameTextField)
        
        usernameTextField.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 25, paddingLeft: 12, paddingRight: 12, height: 50)
        
        view.addSubview(callToActionButton)
        
        callToActionButton.anchor( left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 12,paddingBottom: 20, paddingRight: 12, height: 50)
        
    }
    

    //Adding a tap gesture recognizer so i can dismiss the keyboard from touching anywhere on the screen
    private func dismissKeyboardHelper(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    private func ToFaveListVCHelper(){
        let followerVC = FollowersListVC()
        
        guard let username = usernameTextField.text else {
            
            return
        }
        
        if username == "" {
            let alert = UIAlertController(title: "Error Occured", message: "Need a username to continue", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        
        followerVC.title = "@\(username)"
        
        navigationController?.pushViewController(followerVC, animated: true)
        
        
        
    }
    
    
    private func fetchUserFollower(){
        
        
        UserManager.shared.fetchUserFollowers("octocat") { success in
            
        }
        
        
        
    }
}


extension SearchVC {
    //On return -> Look up github profile
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        ToFaveListVCHelper()
        return true
    }
}
