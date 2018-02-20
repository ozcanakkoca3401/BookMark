//
//  RoundButton.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 19.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class RoundButton: UIButton {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    func initialize(){
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = 3
        clipsToBounds = true
        backgroundColor = bgColor
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var bgColor: UIColor = UIColor.clear {
        didSet {
            backgroundColor = bgColor
        }
    }
    
//    override public func layoutSubviews() {
//        super.layoutSubviews()
//        layer.cornerRadius = 0.02 * bounds.size.width
//        clipsToBounds = true
//    }
    
}
