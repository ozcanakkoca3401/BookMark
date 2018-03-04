//
//  BlueViewController.swift
//  ObjectLibrary
//
//  Created by Umut on 17.02.2018.
//  Copyright © 2018 Umut. All rights reserved.
//

import UIKit

class BlueViewController: BaseViewController2 {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 40, y: 150, width: 100, height: 60))
        button.backgroundColor = UIColor.blue
        super.view.addSubview(button)
        
//        subView.layer.cornerRadius = 5
//        button.layer.cornerRadius = 5
    }
}
