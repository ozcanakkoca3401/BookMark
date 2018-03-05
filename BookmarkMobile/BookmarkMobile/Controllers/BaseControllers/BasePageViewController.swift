//
//  BaseViewController.swift
//  ObjectLibrary
//
//  Created by Umut on 2.03.2018.
//  Copyright © 2018 Umut. All rights reserved.
//obooooooo

import UIKit
import SnapKit

class BasePageViewController: UIViewController, RoundButtonProtocol {
    
    // ScrollView da yapılacak custom değişiklikler burada yapılabilir
    var mainScrollView: EBScrollView = {
        
        let view = EBScrollView()
        
        return view
    }()
    
    var closeButton: CloseButton = {
        
        let button = CloseButton(frame: .zero, image: UIImage(named: "close")!)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        closeButton.roundButtonDelegate = self
        view.backgroundColor = Styling.colorForCode(.blurGray)
        view.addSubview(mainScrollView)
        view.addSubview(closeButton)
        setupView()
        
    }
    
    func setupView() {
        
        mainScrollView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(100)
            make.bottom.equalTo(self.view).offset(-100)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.centerX.equalTo(self.view)
            make.centerY.equalTo(self.view)
        }
        
        closeButton.snp.makeConstraints { (make) in
            make.top.equalTo(mainScrollView.snp.bottom).offset(30)
            make.width.equalTo(130)
            make.height.equalTo(40)
            make.centerX.equalTo(self.view)
        }
    }
    
    func buttonClicked() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
