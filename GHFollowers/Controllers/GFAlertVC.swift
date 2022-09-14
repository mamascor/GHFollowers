//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/14/22.
//

import UIKit



class GFAlertVC: UIViewController {
    //MARK: - Properties
    private let container: UIView = {
        let view = UIView()
        
        
        return view
    }()
    
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    
    var alertTitle: String?
    var messageTitle: String?
    var buttonTitle: String?
    
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    init(title: String, message: String, buttonTitle: String){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.messageTitle = message
        self.buttonTitle = buttonTitle
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Selectors
    
    
    //MARK: - Helpers
    
    
    
}
