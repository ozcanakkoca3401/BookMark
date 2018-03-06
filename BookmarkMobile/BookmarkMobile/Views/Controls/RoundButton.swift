//
//  RoundButton.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 19.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

protocol RoundButtonProtocol: class {
    func buttonClicked()
}

@IBDesignable public class RoundButton: UIButton {
    
    weak var roundButtonDelegate: RoundButtonProtocol?
    
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
    
    @IBInspectable var titleColor: UIColor = Styling.colorForCode(.white) {
        didSet {
            self.setTitleColor(titleColor, for: .normal)
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
        self.addTarget(self, action: #selector(RoundButton.buttonClicked), for: .touchUpInside)
        layer.borderColor = borderColor.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        backgroundColor = bgColor
        setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
    }
    
    @objc func buttonClicked() {
        roundButtonDelegate?.buttonClicked()
    }
    
//    override public func layoutSubviews() {
//        super.layoutSubviews()
//        layer.cornerRadius = 0.02 * bounds.size.width
//        clipsToBounds = true
//    }
    
}
