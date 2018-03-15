//
//  LoginViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var username = ""
    var password = ""
    
    var logo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo_videotron")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
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
        textfield.text = "semih@abc.com"
        textfield.setBottomBorder()
        textfield.setLeftViewImage(imageName: "account")
        
        return textfield
    }()
    
    var passwordTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Password"
        textfield.text = "Abc12345"
        textfield.setBottomBorder()
        textfield.setLeftViewImage(imageName: "textboxpassword")
        textfield.setRightViewImage(imageName: "eyeoff")
        
        return textfield
    }()
    
    var checkBox: RoundButton = {
        let button = RoundButton()
        button.cornerRadius = 3
        button.borderWidth = 2.5
        button.borderColor = Styling.colorForCode(.themeMediumGray)
        button.bgColor = Styling.colorForCode(.white)
        
        return button
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
        button.addTarget(self, action: #selector(loginButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    var bottomLoginWithView: LoginWithView = {
        let view = LoginWithView()
        view.loginWithLabel.EBtext = "Login with"
        
        return view
    }()
    
    var footerView: LoginFooterButtonView = {
        let view = LoginFooterButtonView()
        view.leftButton.title = "Forget Password"
        view.rightButton.title = "Create New Account"
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        footerView.loginFooterButtonDelegate = self
        
        setGradientLayer()
        self.view.addSubview(logo)
        self.view.addSubview(subView)
        subView.addSubview(usernameTextfield)
        subView.addSubview(passwordTextfield)
        subView.addSubview(checkBox)
        subView.addSubview(loginButton)
        self.view.addSubview(bottomLoginWithView)
        self.view.addSubview(footerView)
        
        logo.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(36)
            make.centerX.equalTo(self.view)
            make.height.equalTo(100)
        }
        
        subView.snp.makeConstraints { (make) in
            make.top.equalTo(logo.snp.bottom).offset(36)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(300)
        }
        
        usernameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        passwordTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(usernameTextfield.snp.bottom).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.right.equalTo(self.subView).offset(-20)
            make.height.equalTo(35)
        }
        
        checkBox.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(25)
            make.left.equalTo(self.subView).offset(20)
            make.width.equalTo(20)
            make.height.equalTo(20)
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
    
    @objc func loginButtonClicked() {
        
        self.username = usernameTextfield.text!
        self.password = passwordTextfield.text!
        if Authentication.validateCredential(username: self.username, password: self.password) {
            login(username: username, password: password)
        } else {
            self.showMessage(message: "Username or password is wrong")
        }
    }
    
    fileprivate func showMessage(message: String) {
        let alert = UIAlertController(title: "Alert",
                                      message: message,
                                      preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            switch action.style {
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
            }}))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    fileprivate func login(username: String, password: String) {
        let params: [String: AnyObject] = [
            "userName": username as AnyObject,
            "password": password as AnyObject ]
        
        Authentication.auth(params: params, success: { (result) in
            print(result.name!)
        }, failure: { (error) in
            self.showMessage(message: error.errorMessage)
        })
    }
    
}

extension LoginViewController: LoginFooterButtonProtocol {
    
    func leftButtonClicked() {
        print("left button")
        return
    }
    
    func rightButtonClicked() {
        print("right button")
        let vc = CreateNewAccountViewController()
        vc.modalPresentationStyle = .popover
        present(vc, animated: true, completion: nil)
    }
}
