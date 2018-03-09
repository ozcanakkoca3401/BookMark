//
//  BaseViewController.swift
//  ObjectLibrary
//
//  Created by Umut on 2.03.2018.
//  Copyright © 2018 Umut. All rights reserved.
//obooooooo

import UIKit
import SnapKit

class BasePageViewController: UIViewController, RoundButtonProtocol, EBPageViewProtocol {
    
    // ScrollView da yapılacak custom değişiklikler burada yapılabilir
    
    var topLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "1/8"
        label.font = Styling.font(weight: .bold, size: 24)
        label.textAlignment = .right
        label.EBcolor = Styling.colorForCode(.white)
        
        return label
    }()
    
    var labelView: EBView = {
        let view = EBView()
        
        return view
    }()
    
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

        self.nextPageNumber()
        self.previousPageNumber()
//        var pageController = EBPageViewController()
//        pageController.pageDelegate = self
//        self.addChildViewController(pageController)
        
        closeButton.roundButtonDelegate = self
        view.backgroundColor = Styling.colorForCode(.blurGray)
        view.addSubview(labelView)
        labelView.addSubview(topLabel)
        view.addSubview(mainScrollView)
        view.addSubview(closeButton)
        setupView()
        
    }
    
    func setupView() {
        
        labelView.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.bottom.equalTo(mainScrollView.snp.top)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
        }
        
        topLabel.snp.makeConstraints { (make) in
            make.top.equalTo(labelView)
            make.bottom.equalTo(labelView)
            make.left.equalTo(labelView)
            make.right.equalTo(labelView).offset(-5)
        }
        
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
            make.width.equalTo(120)
            make.height.equalTo(40)
            make.centerX.equalTo(self.view)
        }
    }
    
    func buttonClicked() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func nextPageNumber() {
        print("asdas")
    }
    
    func previousPageNumber() {
        print("asdas")
    }
    
}
