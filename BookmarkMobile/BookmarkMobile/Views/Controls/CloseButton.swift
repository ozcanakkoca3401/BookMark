//
//  CloseButton.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 1.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class CloseButton: AlignedImageButton {
  

        var closeButton: AlignedImageButton = {
        let closeB = AlignedImageButton()
        closeB.setTitle("CLOSE", for: .normal)
        closeB.titleLabel?.textColor = Styling.colorForCode(.black)
        closeB.titleLabel?.font = Styling.font(weight: .regular, size: 20)
        closeB.borderColor = Styling.colorForCode(.themeMediumGray)
        closeB.cornerRadius = 25
        closeB.setImage(UIImage(named: "blackPhone"), for: .normal)
        
        closeB.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        closeB.contentEdgeInsets = UIEdgeInsets(top: 10, left: closeB.bounds.size.width/2 - (closeB.titleLabel?.bounds.size.width)!/2, bottom: 10, right: 0)
        
        return closeB
    }()
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
        
        self.contentHorizontalAlignment = .left
        self.imageView?.contentMode = .scaleAspectFit
        
        guard let image = self.image(for: UIControlState.normal) else {
            return
            
        }
//        self.title = "CLOSE"
//        self.titleLabel?.font = Styling.font(weight: .bold, size: 18)
//        self.setTitleColor(Styling.colorForCode(.themeMediumGray), for: .normal)
       // self.borderColor = Styling.colorForCode(.black)
       // self.cornerRadius = 25
       // self.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        //self.setImage(UIImage(named: "blackPhone"), for: .normal)
        //self.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.bounds.size.width - image.size.width * 1.2, bottom: 0, right: 0)
        //self.contentEdgeInsets = UIEdgeInsets(top: 10, left: self.bounds.size.width/2 - (titleLabel?.bounds.size.width)!/2, bottom: 10, right: 0)
        
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
