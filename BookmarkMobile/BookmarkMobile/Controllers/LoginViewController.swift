//
//  LoginViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var usernameTextfield: EBTextfield = {
        let textfield = EBTextfield(frame: CGRect(x: 50, y: 150, width: 250, height: 30))
        textfield.EBPlaceholder = "Username"
        textfield.setBottomBorder()
        textfield.leftViewMode = .always
        textfield.setLeftViewImage(imageName: "account")
        
        return textfield
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setGradientLayer()
        self.view.addSubview(usernameTextfield)
    }
    
}
