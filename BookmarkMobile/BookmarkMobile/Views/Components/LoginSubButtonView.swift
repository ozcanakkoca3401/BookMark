//
//  LoginSubButtonView.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class LoginSubButtonView: EBView {
    
    var googleButton: RoundButton = {
        let button = RoundButton()
        button.setImage(UIImage(named: "google"), for: .normal)
        
        return button
    }()
    
    public override init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    override func initialize() {
        
//        self.addSubview(loginWithLabel)

//
//        loginWithLabel.snp.makeConstraints { (make) in
//            make.top.equalTo(self)
//            make.left.equalTo(self)
//            make.right.equalTo(self)
//        }
        

    }

}
