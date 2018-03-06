//
//  UsageInfoViewController.swift
//  BookmarkMobile
//
//  Created by Umut on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class UsageInfoViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let a = UsageInformationView()
        view.addSubview(a)
        
        a.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.view).offset(0)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.top.equalTo(self.view).offset(0)
        }
     
    }
    
}
