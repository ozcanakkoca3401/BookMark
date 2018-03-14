//
//  CreateNewAccountViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 14.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class CreateNewAccountViewController: UIViewController {
    
    var username = ""
    var password = ""
    
    var subView: RoundView = {
        let view = RoundView()
        view.bgColor = Styling.colorForCode(.white)
        view.borderWidth = 0.0
        view.cornerRadius = 4
        
        return view
    }()
    
    var firstNameTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "First Name"
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var lastNameTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Last Name"
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var emailTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Email"
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var passwordTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Password"
        textfield.setBottomBorder()
        textfield.setRightViewImage(imageName: "eyeoff")
        
        return textfield
    }()
    
    var passConfirmTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Password Confirm"
        textfield.setBottomBorder()
        textfield.setRightViewImage(imageName: "eyeoff")
        
        return textfield
    }()
    
    var signUpButton: RoundButton = {
        let button = RoundButton()
        button.title = "Sign Up"
        button.titleColor = Styling.colorForCode(.black)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        button.cornerRadius = 4
        button.borderWidth = 0.0
        button.bgColor = Styling.colorForCode(.loginButtonColor)
        button.layer.shadowColor = Styling.colorForCode(.themeDarkGray).cgColor
        button.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        button.layer.shadowOpacity = 0.8
        button.layer.masksToBounds = false
//        button.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    var bottomLoginWithView: LoginWithView = {
        let view = LoginWithView()
        view.loginWithLabel.EBtext = "Sign Up with"
        
        return view
    }()
    
    var footerView: LoginFooterButtonView = {
        let view = LoginFooterButtonView()
        view.createAccountButton.title = "Login"
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientLayer()
        self.view.addSubview(subView)
        subView.addSubview(firstNameTextfield)
        subView.addSubview(lastNameTextfield)
        subView.addSubview(emailTextfield)
        subView.addSubview(passwordTextfield)
        subView.addSubview(passConfirmTextfield)
        subView.addSubview(signUpButton)
        self.view.addSubview(bottomLoginWithView)
        self.view.addSubview(footerView)
        
        subView.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(400)
        }
        
        firstNameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.width.equalTo(100)
            make.height.equalTo(35)
        }
        
        lastNameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(35)
            make.right.equalTo(self.subView).offset(-20)
            make.width.equalTo(100)
            make.height.equalTo(35)
        }
        
        emailTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(lastNameTextfield.snp.bottom).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        passwordTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(emailTextfield.snp.bottom).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        passConfirmTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        signUpButton.snp.makeConstraints { (make) in
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
    
//    @objc func signUpButtonClicked() {
//
//        self.username = usernameTextfield.text!
//        self.password = passwordTextfield.text!
//        if Authentication.validateCredential(username: self.username, password: self.password) {
//            signUp(username: username, password: password)
//        } else {
//            print("login failed")
//        }
//    }
//
//    fileprivate func signUp(username: String, password: String) {
//        let params: [String: AnyObject] = [
//            "userName": username as AnyObject,
//            "password": password as AnyObject ]
//
//        Authentication.auth(params: params, success: { (result) in
//            print(result.name!)
//        }, failure: { (error) in
//            print(error)
//        })
//    }
    
}
