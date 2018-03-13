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
    
    var loginButton: RoundButton = {
        let button = RoundButton()
        button.title = "Login"
        button.titleColor = Styling.colorForCode(.black)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        button.cornerRadius = 4
        button.borderWidth = 0.0
        button.bgColor = Styling.colorForCode(.loginButtonColor)
        button.layer.shadowColor = Styling.colorForCode(.themeDarkGray).cgColor
        button.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        button.layer.shadowOpacity = 0.8
        button.layer.masksToBounds = false
        
        return button
    }()
    
    var bottomLoginWithView: LoginWithView = {
        let view = LoginWithView()

        return view
    }()
    
    var footerView: LoginFooterButtonView = {
        let view = LoginFooterButtonView()
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let params: [String: AnyObject] = [
            "userName": "semih@abc.com" as AnyObject,
            "password": "Abc12345" as AnyObject ]
        
        Authentication.auth(params: params,success: { (result) in
            print(result.name!)
        }, failure: { (error) in
            print(error)
        })
        
        setGradientLayer()
        self.view.addSubview(subView)
        subView.addSubview(usernameTextfield)
        subView.addSubview(passwordTextfield)
        subView.addSubview(loginButton)
        self.view.addSubview(bottomLoginWithView)
        self.view.addSubview(footerView)
        
        subView.snp.makeConstraints { (make) in
            make.top.equalTo(200)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(300)
        }
        
        usernameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(45)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        passwordTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(usernameTextfield.snp.bottom).offset(45)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        loginButton.snp.makeConstraints { (make) in
//            make.top.equalTo(passwordTextfield.snp.bottom).offset(50)
            make.bottom.equalTo(self.subView).offset(-15)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(50)
        }
        
        bottomLoginWithView.snp.makeConstraints { (make) in
            make.bottom.equalTo(footerView.snp.top).offset(-30)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(70)
        }
        
        footerView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.bottom.equalTo(self.view)
            make.height.equalTo(48)
        }
    }
    
}
