//
//  LoginSubButtonView.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class LoginFooterButtonView: EBView {
    
    var forgetPasswordButton: RoundButton = {
        let button = RoundButton()
        button.title = "Forget Password"
        button.cornerRadius = 0
        button.borderWidth = 0.0
        
        return button
    }()
    
    var createAccountButton: RoundButton = {
        let button = RoundButton()
        button.title = "Create New Account"
        button.cornerRadius = 0
        button.borderWidth = 0.0
        
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
        
        self.addSubview(forgetPasswordButton)
        self.addSubview(createAccountButton)

        forgetPasswordButton.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.bottom.equalTo(self)
            make.width.equalTo(self).dividedBy(2)
        }
        
        createAccountButton.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.bottom.equalTo(self)
            make.width.equalTo(self).dividedBy(2)
        }
    }

}
