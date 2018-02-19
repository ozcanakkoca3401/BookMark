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
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.gray {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
//    @IBInspectable var backgroundColor: UIColor = UIColor.clear {
//
//    }

}
