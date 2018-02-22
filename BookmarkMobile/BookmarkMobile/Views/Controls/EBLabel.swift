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
        didSet{
            text = EBtext
        }
    }
    
    @IBInspectable var EBcolor: UIColor = Styling.colorForCode(.themeDarkGray) {
        didSet{
            textColor = EBcolor
        }
    }
    
    @IBInspectable var EBfont: UIFont = Styling.font(weight: .bold, size: 15) {
        didSet{
            font = EBfont
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
    
    func initialize(){
        text = EBtext
        textColor = EBcolor
        font = EBfont
    }
}
