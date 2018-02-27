//
//  CHorizontalSlider.swift
//  BookmarkMobile
//
//  Created by Umut on 22.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class CHorizontalSlider: HorizontalSlider {

    @IBInspectable var isThumbInteractionEnabled: Bool = true {
        didSet {
            isUserInteractionEnabled = isThumbInteractionEnabled
        }
    }

    @IBInspectable var thumbColor: UIColor = Styling.colorForCode(.themeGray) {
        didSet {
            thumbTintColor = thumbColor
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
        super.initialize()
        thumbTintColor = thumbColor
        isUserInteractionEnabled = isThumbInteractionEnabled
    }
    
}
