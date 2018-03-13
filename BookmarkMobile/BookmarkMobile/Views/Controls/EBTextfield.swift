//
//  EBTextfield.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class EBTextfield: UITextField {

    @IBInspectable var EBPlaceholder: String = "" {
        didSet {
            placeholder = EBPlaceholder
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
       placeholder = EBPlaceholder
    }
    
}
