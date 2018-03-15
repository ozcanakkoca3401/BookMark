//
//  LoginSubButtonView.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

protocol LoginFooterButtonProtocol: class {
    func leftButtonClicked()
    func rightButtonClicked()
}

@IBDesignable public class LoginFooterButtonView: EBView {
    
    weak var loginFooterButtonDelegate: LoginFooterButtonProtocol?
    
    @IBInspectable var footerViewBackgrounColor: UIColor = Styling.colorForCode(.themeViewControllerStartColor) {
        didSet {
            backgroundColor = footerViewBackgrounColor
        }
    }
    
    var leftButton: RoundButton = {
        let button = RoundButton()
        button.title = ""
        button.titleColor = Styling.colorForCode(.black)
        button.titleLabel?.font = Styling.font(weight: .regular, size: 14)
        button.cornerRadius = 0
        button.borderWidth = 0.0
        button.addTarget(self, action: #selector(footerLeftButton), for: .touchUpInside)
        
        return button
    }()
    
    var rightButton: RoundButton = {
        let button = RoundButton()
        button.title = ""
        button.titleColor = Styling.colorForCode(.black)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        button.cornerRadius = 0
        button.borderWidth = 0.0
        button.addTarget(self, action: #selector(footerRightButton), for: .touchUpInside)

        return button
    }()
    
    var middleView: EBView = {
        let view = EBView()
        view.backgroundColor = Styling.colorForCode(.black)
        
        return view
    }()
    
    public override init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    override func initialize() {
        
        backgroundColor = footerViewBackgrounColor
        self.addSubview(leftButton)
        self.addSubview(rightButton)
        self.addSubview(middleView)

        leftButton.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.left.equalTo(self)
            make.bottom.equalTo(self)
            make.width.equalTo(self).dividedBy(2).offset(-1)
        }
        
        rightButton.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.right.equalTo(self)
            make.bottom.equalTo(self)
            make.width.equalTo(self).dividedBy(2).offset(-1)
        }
        
        middleView.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(15)
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-15)
            make.width.equalTo(2)
        }
    }
    
    @objc func footerLeftButton() {
        loginFooterButtonDelegate?.leftButtonClicked()
    }
    
    @objc func footerRightButton() {
        loginFooterButtonDelegate?.rightButtonClicked()
    }

}
