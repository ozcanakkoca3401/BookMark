//
//  EBLabel.swift
//  BookmarkMobile
//
//  Created by Umut on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class EBLabel: UILabel {
    
    @IBInspectable var EBtext: String = "" {
        didSet {
            text = EBtext
        }
    }
    
    @IBInspectable var EBcolor: UIColor = Styling.colorForCode(.themeDarkGray) {
        didSet {
            textColor = EBcolor
        }
    }
    
    @IBInspectable var labelBackgroundColor: UIColor = Styling.colorForCode(.themeClear) {
        didSet {
            backgroundColor = labelBackgroundColor
        }
    }
    
    @IBInspectable public var EBfontSize: CGFloat = UIFont.labelFontSize {
        didSet {
            font = Styling.font(weight: .bold, size: Float(EBfontSize))
        }
    }
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            //leftImageView.image = leftImage
        }
    }
    
    public init() {
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
    
    func initialize() {
        text = EBtext
        textColor = EBcolor
        font = Styling.font(weight: .bold, size: Float(EBfontSize))
        backgroundColor = labelBackgroundColor
    }
}
