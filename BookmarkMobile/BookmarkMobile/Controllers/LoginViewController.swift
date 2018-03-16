//
//  LoginViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    var username = ""
    var password = ""
    var isCheckBoxClicked: Bool = false
    
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
        textfield.tag = 1
        
        return textfield
    }()
    
    var passwordTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = "Password"
        textfield.text = "Abc12345"
        textfield.setBottomBorder()
        textfield.setLeftViewImage(imageName: "textboxpassword")
        textfield.setRightViewImage(imageName: "eyeoff")
        textfield.tag = 2
        
        return textfield
    }()
    
    var checkBox: RoundButton = {
        let button = RoundButton()
        button.cornerRadius = 3
        button.borderWidth = 2.5
        button.borderColor = Styling.colorForCode(.themeMediumGray)
        button.bgColor = Styling.colorForCode(.white)
        button.addTarget(self, action: #selector(checkBoxButtnoClicked), for: .touchUpInside)
        
        return button
    }()
    
    var rememberMeLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Remember me"
        label.EBcolor = Styling.colorForCode(.black)
        label.font = Styling.font(weight: .regular, size: 16)
        
        return label
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
        usernameTextfield.delegate = self
        usernameTextfield.becomeFirstResponder()
        passwordTextfield.delegate = self
        
        setGradientLayer()
        self.view.addSubview(logo)
        self.view.addSubview(subView)
        subView.addSubview(usernameTextfield)
        subView.addSubview(passwordTextfield)
        subView.addSubview(checkBox)
        subView.addSubview(rememberMeLabel)
        subView.addSubview(loginButton)
        self.view.addSubview(bottomLoginWithView)
        self.view.addSubview(footerView)
        
        logo.snp.makeConstraints { (make) in
            if #available(iOS 11, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(36)
                make.centerX.equalTo(self.view)
                make.height.equalTo(100)
            } else {
                make.top.equalTo(self.view).offset(36)
                make.centerX.equalTo(self.view)
                make.height.equalTo(100)
            }
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
            make.top.equalTo(passwordTextfield.snp.bottom).offset(30)
            make.left.equalTo(self.subView).offset(20)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        rememberMeLabel.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(30)
            make.left.equalTo(checkBox.snp.right).offset(10)
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
    
    @objc func checkBoxButtnoClicked() {
        if !isCheckBoxClicked {
            checkBox.bgColor = Styling.colorForCode(.textFieldBorderColor)
            checkBox.setImage(UIImage(named: "check"), for: .normal)
            checkBox.borderColor = Styling.colorForCode(.textFieldBorderColor)
            isCheckBoxClicked = true
        } else {
            checkBox.bgColor = Styling.colorForCode(.white)
            checkBox.setImage(UIImage(named: ""), for: .normal)
            checkBox.borderColor = Styling.colorForCode(.themeMediumGray)
            isCheckBoxClicked = false
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
            
            if self.isCheckBoxClicked {
                UserDefaults.standard.set(result.customerId, forKey: "remember")
                UserDefaults.standard.synchronize()
                
                // swiftlint:disable force_cast
                let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
                delegate.rememberLogin()
                print(result.name!)
            } else {
                let mainVC = MainViewController()
                mainVC.modalPresentationStyle = .popover
                self.present(mainVC, animated: true, completion: nil)
                print(result.id!)
            }
            
        }, failure: { (error) in
            self.showMessage(message: error.errorMessage)
        })
    }
    
}

extension LoginViewController: LoginFooterButtonProtocol, UITextFieldDelegate {
    
    func leftButtonClicked() {
        print("left button")
        
        let vc = ForgetPasswordViewController()
        vc.modalPresentationStyle = .popover
        present(vc, animated: true, completion: nil)
    }
    
    func rightButtonClicked() {
        print("right button")
        
        let vc = CreateNewAccountViewController()
        vc.modalPresentationStyle = .popover
        present(vc, animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.tag == 1 {
            usernameTextfield.layer.shadowColor = Styling.colorForCode(.textFieldBorderColor).cgColor
        } else {
            passwordTextfield.layer.shadowColor = Styling.colorForCode(.textFieldBorderColor).cgColor
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        if textField.tag == 1 {
            usernameTextfield.layer.shadowColor = Styling.colorForCode(.black).cgColor
        } else {
            passwordTextfield.layer.shadowColor = Styling.colorForCode(.black).cgColor
        }
        
    }
    
}
