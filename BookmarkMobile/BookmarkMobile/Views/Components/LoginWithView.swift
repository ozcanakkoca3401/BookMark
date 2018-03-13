//
//  LoginWithView.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class LoginWithView: EBView {

    var loginWithLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Login With"
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 16)
        label.labelBackgroundColor = UIColor.red
        
        return label
    }()
    
    var googleButton: RoundButton = {
        let button = RoundButton()
        button.backgroundColor = UIColor.cyan
        button.setImage(UIImage(named: "google"), for: .normal)
    
        return button
    }()
    
    var facebookButton: RoundButton = {
        let button = RoundButton()
        button.backgroundColor = UIColor.cyan
        button.setImage(UIImage(named: "facebook"), for: .normal)
        
        return button
    }()
    
    var linkedinButton: RoundButton = {
        let button = RoundButton()
        button.backgroundColor = UIColor.cyan
        button.setImage(UIImage(named: "linkedin"), for: .normal)
        
        return button
    }()
    
    var twitterButton: RoundButton = {
        let button = RoundButton()
        button.backgroundColor = UIColor.cyan
        button.setImage(UIImage(named: "twitter"), for: .normal)
        
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
        
        self.addSubview(loginWithLabel)
        self.addSubview(googleButton)
        self.addSubview(facebookButton)
        self.addSubview(linkedinButton)
        self.addSubview(twitterButton)
        
        loginWithLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.right.equalTo(self)
        }
        
        googleButton.snp.makeConstraints { (make) in
            make.top.equalTo(loginWithLabel.snp.bottom).offset(8)
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.left.equalTo(self)
        }
        
        facebookButton.snp.makeConstraints { (make) in
            make.top.equalTo(loginWithLabel.snp.bottom).offset(8)
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.left.equalTo(googleButton.snp.right).offset(18)
        }
        
        linkedinButton.snp.makeConstraints { (make) in
            make.top.equalTo(loginWithLabel.snp.bottom).offset(8)
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.left.equalTo(facebookButton.snp.right).offset(18)
        }
        
        twitterButton.snp.makeConstraints { (make) in
            make.top.equalTo(loginWithLabel.snp.bottom).offset(8)
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.left.equalTo(linkedinButton.snp.right).offset(18)
        }
    }
    
}
