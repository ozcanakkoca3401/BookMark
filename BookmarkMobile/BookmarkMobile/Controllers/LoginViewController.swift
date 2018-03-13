//
//  LoginViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var subView: RoundView = {
        let view = RoundView()
        view.bgColor = Styling.colorForCode(.white)
        view.borderWidth = 0.0
        view.cornerRadius = 4
        
        return view
    }()
    
    var usernameTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Username"
        textfield.setBottomBorder()
        textfield.leftViewMode = .always
        textfield.setLeftViewImage(imageName: "account")
        
        return textfield
    }()
    
    var passwordTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Password"
        textfield.setBottomBorder()
        textfield.leftViewMode = .always
        textfield.setLeftViewImage(imageName: "textboxpassword")
        textfield.rightViewMode = .always
        textfield.setRightViewImage(imageName: "eyeoff")
        
        return textfield
    }()
    
    var bottomLoginWithView: LoginWithView = {
        let view = LoginWithView()
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientLayer()
        self.view.addSubview(subView)
        subView.addSubview(usernameTextfield)
        subView.addSubview(passwordTextfield)
        self.view.addSubview(bottomLoginWithView)
        
        subView.snp.makeConstraints { (make) in
            make.top.equalTo(150)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(300)
        }
        
        usernameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(30)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        passwordTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(usernameTextfield.snp.bottom).offset(30)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        bottomLoginWithView.snp.makeConstraints { (make) in
            make.top.equalTo(subView.snp.bottom).offset(50)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(50)
        }
    }
    
}
