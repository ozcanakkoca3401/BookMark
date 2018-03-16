//
//  MainViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 16.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(logout), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.view.addSubview(myButton)

        myButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(150)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.height.equalTo(50)
        }
        
    }
    
    @objc func logout() {
        UserDefaults.standard.removeObject(forKey: "remember")
        UserDefaults.standard.synchronize()
        
        let vc = LoginViewController()
        vc.modalPresentationStyle = .popover
        present(vc, animated: true, completion: nil)
    }

}
