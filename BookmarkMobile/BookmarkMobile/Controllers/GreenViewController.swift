//
//  ViewController.swift
//  ObjectLibrary
//
//  Created by Umut on 17.02.2018.
//  Copyright © 2018 Umut. All rights reserved.
//

import UIKit

class GreenViewController: BaseViewController2 {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 60))
        button.backgroundColor = UIColor.black
        super.view.addSubview(button)
        
//        subView.layer.cornerRadius = 5
//        button.layer.cornerRadius = 5
        
    }
}
