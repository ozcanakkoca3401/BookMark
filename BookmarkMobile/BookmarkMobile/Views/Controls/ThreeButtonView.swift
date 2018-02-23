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
    var addOnButton: RoundButton = {
        let addOnB = RoundButton()
        addOnB.setTitle("ADD-ON", for: .normal)
        addOnB.titleLabel?.textColor = UIColor.white
        addOnB.backgroundColor = Styling.colorForCode(.themeDarkBlue)
        addOnB.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        
        return addOnB
    }()
    
    var giveButton: RoundButton = {
        let giveB = RoundButton()
        giveB.setTitle("GIVE", for: .normal)
        giveB.titleLabel?.textColor = UIColor.white
        giveB.backgroundColor = Styling.colorForCode(.themeDarkBlue)
        giveB.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        
        return giveB
    }()
    
    var usageButton: RoundButton = {
        let usageB = RoundButton()
        usageB.setTitle("USAGE", for: .normal)
        usageB.titleLabel?.textColor = UIColor.white
        usageB.backgroundColor = Styling.colorForCode(.themeDarkBlue)
        usageB.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        
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



        addOnButton.snp.makeConstraints { (make) in
            make.width.equalTo(70)
            make.height.equalTo(45)
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }

        giveButton.snp.makeConstraints { (make) in
            make.width.equalTo(70)
            make.height.equalTo(45)
            make.left.equalTo(self).offset(90)
            make.centerY.equalTo(self)
        }

        usageButton.snp.makeConstraints { (make) in
            make.width.equalTo(70)
            make.height.equalTo(45)
           // make.left.equalTo(priceLabel).offset(30)
            make.right.equalTo(self).offset(-10)
            make.centerY.equalTo(self)
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }

}

