//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Marco Mascorro on 9/14/22.
//

import UIKit



class GFBodyLabel: UILabel {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment){
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }
    
    private func configure(){
        textColor                 = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor        = 0.75
        lineBreakMode             = .byWordWrapping
        font                      = UIFont.preferredFont(forTextStyle: .body)
        
        
    }
    
}
