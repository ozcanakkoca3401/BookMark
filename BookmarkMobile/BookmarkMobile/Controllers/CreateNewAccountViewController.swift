//
//  CreateNewAccountViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 14.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class CreateNewAccountViewController: BaseViewController {
    
    var username = ""
    var password = ""
    var isCheckBoxClicked: Bool = false
    
    var headerLabel: EBLabel = {
       let label = EBLabel()
        label.EBtext = NSLocalizedString("CREATE NEW ACCOUNT", comment: "comment")
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
    
    var firstNameTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = NSLocalizedString("First Name", comment: "comment")
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var lastNameTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = NSLocalizedString("Last Name", comment: "comment")
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var emailTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = NSLocalizedString("Email Address", comment: "comment")
        textfield.setBottomBorder()
        
        return textfield
    }()
    
    var passwordTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = NSLocalizedString("Password", comment: "comment")
        textfield.setBottomBorder()
        textfield.setRightViewImage(imageName: "eyeoff")
        
        return textfield
    }()
    
    var passConfirmTextfield: EBTextfield = {
        let textfield = EBTextfield()
        textfield.EBPlaceholder = NSLocalizedString("Password Confirm", comment: "comment")
        textfield.setBottomBorder()
        textfield.setRightViewImage(imageName: "eyeoff")
        
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
    
    var agreeLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = NSLocalizedString("I agree to the", comment: "comment")
        label.EBcolor = Styling.colorForCode(.black)
        label.font = Styling.font(weight: .regular, size: 16)
        
        return label
    }()
    
    var termServicesLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = NSLocalizedString("Terms & Services", comment: "comment")
        label.EBcolor = Styling.colorForCode(.textFieldBorderColor)
        label.font = Styling.font(weight: .bold, size: 16)
        
        return label
    }()
    
    var signUpButton: RoundButton = {
        let button = RoundButton()
        button.title = NSLocalizedString("Sign Up", comment: "comment")
        button.titleColor = Styling.colorForCode(.black)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        button.cornerRadius = 4
        button.borderWidth = 0.0
        button.bgColor = Styling.colorForCode(.loginButtonColor)
//        button.addTarget(self, action: #selector(signUpButtonClicked), for: .touchUpInside)
        
        return button
    }()
    
    var bottomLoginWithView: LoginWithView = {
        let view = LoginWithView()
        view.loginWithLabel.EBtext = NSLocalizedString("Sign Up with", comment: "comment")
        
        return view
    }()
    
    var footerView: LoginFooterButtonView = {
        let view = LoginFooterButtonView()
        view.rightButton.title = NSLocalizedString("Login", comment: "comment")
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        footerView.loginFooterButtonDelegate = self
        firstNameTextfield.delegate = self
        firstNameTextfield.becomeFirstResponder()
        lastNameTextfield.delegate = self
        emailTextfield.delegate = self
        passwordTextfield.delegate = self
        passConfirmTextfield.delegate = self
        
        setGradientLayer()
        self.view.addSubview(headerLabel)
        self.view.addSubview(subView)
        subView.addSubview(firstNameTextfield)
        subView.addSubview(lastNameTextfield)
        subView.addSubview(emailTextfield)
        subView.addSubview(passwordTextfield)
        subView.addSubview(passConfirmTextfield)
        subView.addSubview(checkBox)
        subView.addSubview(agreeLabel)
        subView.addSubview(termServicesLabel)
        subView.addSubview(signUpButton)
        self.view.addSubview(bottomLoginWithView)
        self.view.addSubview(footerView)
        
        headerLabel.snp.makeConstraints { (make) in
            
            if #available(iOS 11, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(30)
                make.left.equalTo(self.view)
                make.right.equalTo(self.view)
            } else {
                make.top.equalTo(self.view).offset(30)
                make.left.equalTo(self.view)
                make.right.equalTo(self.view)
            }
        }
        
        subView.snp.makeConstraints { (make) in
            make.top.equalTo(headerLabel.snp.bottom).offset(20)
            make.left.equalTo(self.view).offset(16)
            make.right.equalTo(self.view).offset(-16)
            make.height.equalTo(420)
        }
        
        firstNameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(35)
            make.left.equalTo(self.subView).offset(20)
            make.width.equalTo(self.subView).dividedBy(2).offset(-25)
            make.height.equalTo(35)
        }
        
        lastNameTextfield.snp.makeConstraints { (make) in
            make.top.equalTo(self.subView).offset(35)
            make.right.equalTo(self.subView).offset(-20)
            make.width.equalTo(self.subView).dividedBy(2).offset(-25)
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
        
        checkBox.snp.makeConstraints { (make) in
            make.top.equalTo(passConfirmTextfield.snp.bottom).offset(25)
            make.left.equalTo(self.subView).offset(20)
            make.width.equalTo(20)
            make.height.equalTo(20)
        }
        
        agreeLabel.snp.makeConstraints { (make) in
            make.top.equalTo(passConfirmTextfield.snp.bottom).offset(25)
            make.left.equalTo(self.checkBox.snp.right).offset(10)
        }
        
        termServicesLabel.snp.makeConstraints { (make) in
            make.top.equalTo(passConfirmTextfield.snp.bottom).offset(25)
            make.left.equalTo(self.agreeLabel.snp.right).offset(5)
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
        isCheckBoxClicked = super.baseCheckBoxButtnoClicked(isCheckBoxClicked: isCheckBoxClicked, checkBox: checkBox)
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

extension CreateNewAccountViewController: LoginFooterButtonProtocol, UITextFieldDelegate {
    func leftButtonClicked() {
        print("left button")
    }
    
    func rightButtonClicked() {
        print("right button")
        self.dismiss(animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        super.baseTextFieldDidBeginEditing(textField)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        super.baseTextFieldDidEndEditing(textField)
    }
    
}
