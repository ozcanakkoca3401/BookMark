//
//  CustomPopup.swift
//  BookmarkMobile
//
//  Created by Umut on 28.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import SnapKit

protocol CustomPopupProtocol: class {
    func cancelButton()
    func confirmButton()
}

@IBDesignable public class CustomPopup: EBView {

    weak var twoButtonDelegate: CustomPopupProtocol?
    
//    @IBInspectable var leftImage: UIImage? {
//        didSet {
//            leftImageView.image = leftImage
//        }
//    }
    
    var subView: RoundView = {
        let view = RoundView()
        view.bgColor = Styling.colorForCode(.themeUltraLightGray)
        return view
    }()
    
    var headerLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Delete payment method ?"
        label.textAlignment = .center
        return label
    }()
    
    var subLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Do you really want to delete this payment method ?"
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    var leftButton: RoundButton = {
       let button = RoundButton()
        button.bgColor = Styling.colorForCode(.themeLight)
        button.title = "CANCEL"
        button.addTarget(self, action: #selector(CustomPopup.cancelButtonF), for: .touchUpInside)
        return button
    }()
    
    var rightButton: RoundButton = {
        let button = RoundButton()
        button.bgColor = Styling.colorForCode(.themeDarkBlue)
        button.title = "CONFIRM"
        button.addTarget(self, action: #selector(CustomPopup.confirmButtonF), for: .touchUpInside)
        return button
    }()
    
    public override init() {
        super.init()
        self.initialize()
    }
    
    // code initialize
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    // storyboard initialize
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    override func initialize() {
        
        self.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
        self.subView.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: .curveEaseIn, animations: {
            self.subView.transform = CGAffineTransform.identity
        })
        
        self.addSubview(subView)
//        headerLabel.backgroundColor = UIColor.brown
//        subLabel.backgroundColor = UIColor.brown
        self.subView.addSubview(headerLabel)
        self.subView.addSubview(subLabel)
        self.subView.addSubview(leftButton)
        self.subView.addSubview(rightButton)
        
        subView.snp.makeConstraints { (make) in
//            make.left.right.equalTo(self).offset(20)
//            make.top.bottom.equalTo(self).offset(50)
//            make.top.bottom.equalTo(self).dividedBy(2)
//            make.height.equalTo(100)
//            make.width.equalTo(100)
            make.height.equalTo(300)
            make.width.equalTo(350)
//            make.left.right.equalTo(10)
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
        
        headerLabel.snp.makeConstraints { (make) in
            make.top.equalTo(20)
//            make.height.equalTo(40)
            make.left.equalTo(subView).offset(5)
            make.right.equalTo(subView).offset(-5)
        }
        
        subLabel.snp.makeConstraints { (make) in
            make.top.equalTo(60)
//            make.height.equalTo(40)
            make.left.equalTo(subView).offset(5)
            make.right.equalTo(subView).offset(-5)
        }
        
        leftButton.snp.makeConstraints { (make) in
//            make.top.equalTo(250)
            make.bottom.equalTo(-15)
            make.left.equalTo(15)
            make.height.equalTo(40)
            make.width.equalTo(subView).dividedBy(2).offset(-60)
        }
        
        rightButton.snp.makeConstraints { (make) in
//            make.top.equalTo(250)
            make.bottom.equalTo(-15)
            make.right.equalTo(-15)
            make.height.equalTo(40)
            make.width.equalTo(subView).dividedBy(2).offset(10)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
    @objc func cancelButtonF() {
        twoButtonDelegate?.cancelButton()
    }
    
    @objc func confirmButtonF() {
        twoButtonDelegate?.confirmButton()
    }

}
