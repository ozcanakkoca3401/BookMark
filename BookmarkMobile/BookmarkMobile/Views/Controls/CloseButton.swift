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
        self.setupButton()
        
        
//        self.contentHorizontalAlignment = .left
//        self.imageView?.contentMode = .scaleAspectFit
        
//        guard let image = self.image(for: UIControlState.normal) else {
//            return
//
//        }
//        self.title = "CLOSE"
//        self.titleLabel?.font = Styling.font(weight: .bold, size: 18)
//        self.setTitleColor(Styling.colorForCode(.themeMediumGray), for: .normal)
       // self.borderColor = Styling.colorForCode(.black)
       // self.cornerRadius = 25
       // self.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        //self.setImage(UIImage(named: "blackPhone"), for: .normal)
        //self.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.bounds.size.width - image.size.width * 1.2, bottom: 0, right: 0)
        //self.contentEdgeInsets = UIEdgeInsets(top: 10, left: self.bounds.size.width/2 - (titleLabel?.bounds.size.width)!/2, bottom: 10, right: 0)
        
        

//
//        closeButton.snp.makeConstraints { (make) in
//            make.width.equalTo(60)
//            make.height.equalTo(40)
//            make.right.equalTo(self).offset(0)
//            make.centerY.equalTo(self)
//        }
        
    }
    
    func setupButton() {
        self.cornerRadius = 25
        self.title = "CLOSE"
        self.bgColor = Styling.colorForCode(.themeGray)
        self.setTitleColor(Styling.colorForCode(.black), for: .normal)
        self.titleLabel?.font = Styling.font(weight: .regular, size: 20)
        
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 200, bottom: 0, right: 0)
      // self.contentEdgeInsets = UIEdgeInsets(top: 10, left: self.bounds.size.width/2 , bottom: 10, right: 0)
        self.titleEdgeInsets = UIEdgeInsets(top: 10, left: 40 , bottom: 10, right: 0)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
