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

 @IBDesignable public class RoundView: UIView {
    
    var delegate: TouchableProtocol?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
       
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.gray {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.5 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
   
    @IBInspectable var cornerRadius: CGFloat = 5 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
    override public func layoutSubviews() {
       super.layoutSubviews()
       layer.cornerRadius = cornerRadius
       layer.borderWidth = borderWidth
       layer.borderColor = borderColor.cgColor
       clipsToBounds = true
    }
    
//    @IBInspectable var backgroundColor: UIColor = UIColor.clear {
//
//    }

}
