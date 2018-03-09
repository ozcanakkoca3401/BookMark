//
//  ThreeButtonView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 23.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

protocol ThreeButtonProtocol: class {
    func addOnButton()
    func giveButton()
    func usageButton()
}

@IBDesignable public class ThreeButtonView: EBView {

    weak var threeButtonDelegate: ThreeButtonProtocol?
    
    var addOnButton: RoundButton = {
        let addOnB = RoundButton()
        addOnB.title = "ADD-ON"
        addOnB.titleLabel?.textColor = UIColor.white
        addOnB.bgColor = Styling.colorForCode(.themeDarkBlue)
        addOnB.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        addOnB.addTarget(self, action: #selector(ThreeButtonView.addOnButtonF), for: .touchUpInside)
        
        return addOnB
    }()
    
    var giveButton: RoundButton = {
        let giveB = RoundButton()
        giveB.title = "GIVE"
        giveB.titleLabel?.textColor = UIColor.white
        giveB.bgColor = Styling.colorForCode(.themeDarkBlue)
        giveB.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        giveB.addTarget(self, action: #selector(ThreeButtonView.giveButtonF), for: .touchUpInside)
        
        return giveB
    }()
    
    var usageButton: RoundButton = {
        let usageB = RoundButton()
        usageB.title = "USAGE"
        usageB.titleLabel?.textColor = UIColor.white
        usageB.bgColor = Styling.colorForCode(.themeDarkBlue)
        usageB.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        usageB.addTarget(self, action: #selector(ThreeButtonView.usageButtonF), for: .touchUpInside)
        
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
            make.top.bottom.equalTo(self)
            make.left.equalTo(15)
            make.width.equalTo(self).dividedBy(3).offset(-15)
        }

        giveButton.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(self)
            make.centerX.equalTo(self)
            make.width.equalTo(self).dividedBy(3).offset(-15)
        }

        usageButton.snp.makeConstraints { (make) in
            make.top.bottom.equalTo(self)
            make.right.equalTo(-15)
            make.width.equalTo(self).dividedBy(3).offset(-15)
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
    @objc func addOnButtonF() {
        threeButtonDelegate?.addOnButton()
    }
    
    @objc func giveButtonF() {
        threeButtonDelegate?.giveButton()
    }
    
    @objc func usageButtonF() {
        threeButtonDelegate?.usageButton()
    }
}
