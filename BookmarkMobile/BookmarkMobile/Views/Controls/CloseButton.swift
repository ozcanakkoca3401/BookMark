//
//  CloseButton.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 1.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class CloseButton: RoundButton {
  

//    var closeButton: UIButton = {
//        let closeB = UIButton()
//        closeB.setTitle("CLOSE", for: .normal)
//        closeB.titleLabel?.textColor = Styling.colorForCode(.black)
//        closeB.titleLabel?.font = Styling.font(weight: .regular, size: 20)
//
//        return closeB
//    }()
//
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
        
        self.title = "CLOSE"
        self.setTitleColor(Styling.colorForCode(.black), for: .normal)
        self.borderColor = Styling.colorForCode(.black)
        self.cornerRadius = 25

        
        
        super.initialize()

//
//        closeButton.snp.makeConstraints { (make) in
//            make.width.equalTo(60)
//            make.height.equalTo(40)
//            make.right.equalTo(self).offset(0)
//            make.centerY.equalTo(self)
//        }
        
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
