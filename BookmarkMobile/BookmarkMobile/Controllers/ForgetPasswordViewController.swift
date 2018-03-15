//
//  ForgetPasswordViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 15.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: BaseViewController {

    var username = ""
    var password = ""
    
    var headerLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Forget Password"
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 18)
        label.EBcolor = Styling.colorForCode(.black)
        
        return label
    }()
    
    var subView: RoundView = {
        let view = RoundView()
        view.bgColor = Styling.colorForCode(.white)
        view.borderWidth = 0.0
        view.cornerRadius = 4
        
        return view
    }()
    
    var emailAdressTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Email Address"
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var passwordResetButton: RoundButton = {
        let button = RoundButton()
        button.title = "Password Reset"
        button.titleColor = Styling.colorForCode(.black)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        button.cornerRadius = 4
        button.borderWidth = 0.0
        button.bgColor = Styling.colorForCode(.loginButtonColor)
        //        button.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    var footerView: LoginFooterButtonView = {
        let view = LoginFooterButtonView()
        view.rightButton.title = "Login"
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        footerView.loginFooterButtonDelegate = self
        emailAdressTextfield.becomeFirstResponder()
        
        setGradientLayer()
        self.view.addSubview(headerLabel)
        self.view.addSubview(subView)
        subView.addSubview(emailAdressTextfield)
        subView.addSubview(passwordResetButton)
        self.view.addSubview(footerView)
        
        headerLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.subView.snp.top).offset(-20)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
        }
        
        subView.snp.makeConstraints { (make) in
//            make.top.equalTo(headerLabel.snp.bottom).offset(20)
            make.centerY.equalTo(self.view)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(180)
        }
        
        emailAdressTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        passwordResetButton.snp.makeConstraints { (make) in
            //            make.top.equalTo(passwordTextfield.snp.bottom).offset(50)
            make.bottom.equalTo(self.subView).offset(-15)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(50)
        }
        
        footerView.snp.makeConstraints { (make) in
            if #available(iOS 11, *) {
                make.left.equalTo(self.view)
                make.right.equalTo(self.view)
                make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
                make.height.equalTo(48)
            } else {
                make.left.equalTo(self.view)
                make.right.equalTo(self.view)
                make.bottom.equalTo(self.view)
                make.height.equalTo(48)
            }
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

extension ForgetPasswordViewController: LoginFooterButtonProtocol {
    func leftButtonClicked() {
        print("left button")
    }
    
    func rightButtonClicked() {
        print("right button")
        self.dismiss(animated: true, completion: nil)
    }
}
