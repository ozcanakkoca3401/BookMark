//
//  RoundButton.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 19.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class RoundButton: UIButton {
    
    @IBInspectable var borderColor: UIColor = Styling.colorForCode(.themeClear) {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 3 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var bgColor: UIColor = Styling.colorForCode(.themeClear) {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable var title: String = "" {
        didSet {
            self.setTitle(title, for: .normal)
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
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        backgroundColor = bgColor
        setTitle(title, for: .normal)
    }
    
//    override public func layoutSubviews() {
//        super.layoutSubviews()
//        layer.cornerRadius = 0.02 * bounds.size.width
//        clipsToBounds = true
//    }
    
}
