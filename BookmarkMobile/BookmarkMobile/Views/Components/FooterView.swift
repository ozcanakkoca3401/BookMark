//
//  FooterView.swift
//  BookmarkMobile
//
//  Created by Umut on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class FooterView: EBView {

    @IBInspectable var bgColor: UIColor = Styling.colorForCode(.white) {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    var topLabel: EBLabel = {
        var label = EBLabel()
        label.EBtext = "You just level up ! It's time to manage your privileges"
        label.EBNumberOfLine = 2
        label.textAlignment = .center
        label.font = Styling.font(weight: .regular, size: 16)
        
       return label
    }()
    
    var bottomButton: AlignedImageButton = {
        var button = AlignedImageButton(frame: .zero, image: UIImage(named: "right-arrow")!)
        button.bgColor = Styling.colorForCode(.themeDarkGray)
        button.title = "MANAGE"
        button.titleColor = Styling.colorForCode(.white)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 25)
        button.borderColor = Styling.colorForCode(.themeClear)
        button.borderWidth = 0.0
        
        return button
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

        backgroundColor = bgColor
        layer.shadowColor = Styling.colorForCode(.themeDarkGray).cgColor
        layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        layer.shadowOpacity = 0.5
        
        self.addSubview(topLabel)
        self.addSubview(bottomButton)
        
        topLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(20)
            make.left.equalTo(self).offset(20)
            make.right.equalTo(self).offset(-20)
        }
        
        bottomButton.snp.makeConstraints { (make) in
            make.top.equalTo(topLabel.snp.bottom).offset(20)
            make.height.equalTo(40)
            make.centerX.equalTo(self)
            make.width.greaterThanOrEqualTo(120)
        }
    }
    
    override public func layoutSubviews() { // refresh durumunda...
        super.layoutSubviews()
    }
   
}
