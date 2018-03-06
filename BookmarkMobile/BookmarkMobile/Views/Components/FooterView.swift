//
//  FooterView.swift
//  BookmarkMobile
//
//  Created by Umut on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class FooterView: EBView {

    @IBInspectable var bgColor: UIColor = Styling.colorForCode(.themeClear) {
        didSet {
            backgroundColor = bgColor
        }
    }
    
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
        
    }
    
    override public func layoutSubviews() { // refresh durumunda...
        super.layoutSubviews()
    }
   
}
