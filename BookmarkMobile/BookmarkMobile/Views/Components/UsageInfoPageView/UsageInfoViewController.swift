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
        a.frame = CGRect(x: 50, y: 100, width: 280, height: 300)
        view.addSubview(a)
     
    }

}
