//
//  RoundView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 19.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

protocol TouchableProtocol {
    func didTrigger()
}

 @IBDesignable public class RoundView: EBView {
    
    var delegate: TouchableProtocol?
    
    @IBInspectable var borderColor: UIColor = Styling.colorForCode(.themeGray) {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.8 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 5 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
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
    
    override func initialize(){
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        clipsToBounds = true
        
        self.isUserInteractionEnabled = true
        let gesturedRecognizer = UITapGestureRecognizer(target: self, action: #selector(RoundView.touchAction))
        self.addGestureRecognizer(gesturedRecognizer)
    }
    
    @objc func touchAction() {
        delegate?.didTrigger()
    }
    
   override public func layoutSubviews() { // refresh durumunda...
       super.layoutSubviews()
    }
}
