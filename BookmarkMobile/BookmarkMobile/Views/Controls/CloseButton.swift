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
    }
    
    func setupButton() {
        self.cornerRadius = 20
        self.title = "CLOSE"
        self.bgColor = Styling.colorForCode(.white)
        self.setTitleColor(Styling.colorForCode(.black), for: .normal)
        self.titleLabel?.font = Styling.font(weight: .regular, size: 20)
        self.semanticContentAttribute = .forceRightToLeft
        self.titleEdgeInsets = UIEdgeInsets(top: 10, left: self.bounds.width/2 - 50, bottom: 10, right: 0)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: self.titleEdgeInsets.left + 10, bottom: 0, right: 0)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
