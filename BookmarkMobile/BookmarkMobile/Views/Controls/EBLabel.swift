//
//  EBLabel.swift
//  BookmarkMobile
//
//  Created by Umut on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class EBLabel: UILabel {

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
    
    func initialize(){
        self.text = EBtitle
    }
    
    @IBInspectable var EBtitle: String = "" {
        didSet{
            
            self.text = EBtitle
        }
    }

}
