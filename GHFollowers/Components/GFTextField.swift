//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/10/22.
//

import UIKit

class GFTextFeild: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        layer.cornerRadius = 10
        
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        autocapitalizationType = .none
        
        placeholder = "Enter a username"
    }
    
    
    
}