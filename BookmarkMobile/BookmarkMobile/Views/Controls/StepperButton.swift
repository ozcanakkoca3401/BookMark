//
//  StepperButton.swift
//  BookmarkMobile
//
//  Created by Umut on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class StepperButton: RoundView {

    private var button:RoundButton!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    func initialize(){
        super.borderColor = .clear
        super.borderWidth = 0
        super.backgroundColor = UIColor.clear
        button = RoundButton()
        test()
    }
    
    func test(){
        
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        self.addSubview(button)
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
