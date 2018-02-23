//
//  ThreeButtonView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 23.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit


@IBDesignable public class ThreeButtonView: EBView {

    @IBInspectable var addOn: RoundButton? {
        didSet {
            
        }
    }
    
    @IBInspectable var give: RoundButton? {
        didSet {
            
        }
    }
    
    @IBInspectable var usage: RoundButton? {
        didSet {
            
        }
    }
    var addOnButton: UIButton = {
        let addOnB = UIButton()
        addOnB.setTitle("ADD-ON", for: .normal)
        addOnB.titleLabel?.textColor = UIColor.white
        addOnB.titleLabel?.font = Styling.font(weight: .regular, size: 15)
        addOnB.backgroundColor = Styling.colorForCode(.themeBlue)
        
        return addOnB
    }()
    
    var giveButton: UIButton = {
        let giveB = UIButton()
        giveB.setTitle("GIVE", for: .normal)
        giveB.titleLabel?.textColor = UIColor.white
        giveB.titleLabel?.font = Styling.font(weight: .regular, size: 15)
        giveB.backgroundColor = Styling.colorForCode(.themeBlue)
        
        return giveB
    }()
    
    var usageButton: UIButton = {
        let usageB = UIButton()
        usageB.setTitle("USAGE", for: .normal)
        usageB.titleLabel?.textColor = UIColor.white
        usageB.titleLabel?.font = Styling.font(weight: .regular, size: 15)
        usageB.backgroundColor = Styling.colorForCode(.themeBlue)
        
        return usageB
    }()
    // code initialize
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

        super.initialize()
        self.addSubview(addOnButton)
        self.addSubview(giveButton)
        self.addSubview(usageButton)



//        iconLabel.snp.makeConstraints { (make) in
//            make.width.equalTo(30)
//            make.height.equalTo(30)
//            make.left.equalTo(self).offset(15)
//            make.centerY.equalTo(self)
//        }
//
//        priceLabel.snp.makeConstraints { (make) in
//            make.width.equalTo(30)
//            make.height.equalTo(30)
//            make.left.equalTo(iconLabel).offset(15)
//            make.centerY.equalTo(self)
//        }
//
//        productDescriptionLabel.snp.makeConstraints { (make) in
//            make.height.equalTo(20)
//            make.left.equalTo(priceLabel).offset(30)
//            make.right.equalTo(self).offset(-15)
//            make.centerY.equalTo(self)
//        }
//    }
//
//    override public func layoutSubviews() {
//        super.layoutSubviews()
//    }

}
}
