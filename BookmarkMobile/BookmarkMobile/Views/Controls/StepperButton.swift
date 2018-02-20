//
//  StepperButton.swift
//  BookmarkMobile
//
//  Created by Umut on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class StepperButton: RoundView {

    private var button1:RoundButton!
    private var button2:RoundButton!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        setupStepperButton()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
        setupStepperButton()
    }
    
    override func initialize() {
        super.initialize()
        borderColor = UIColor.clear
        borderWidth = 0
        button1 = RoundButton(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        button2 = RoundButton(frame: CGRect(x: 40, y: 0, width: 35, height: 35))
        button1.bgColor = UIColor.init(red: 85/255, green: 173/255, blue: 236/255, alpha: 1)
        button2.bgColor = UIColor.init(red: 85/255, green: 173/255, blue: 236/255, alpha: 1)
        button1.borderColor = UIColor.clear
        button2.borderColor = UIColor.clear
        button1.borderWidth = 0
        button2.borderWidth = 0
    }

    func setupStepperButton(){
        
//        button1.setImage(UIImage(named:""), for: .normal)
//        button2.setImage(UIImage(named:""), for: .normal)
        
        button1.setTitle("-", for: .normal)
        button2.setTitle("+", for: .normal)
        
        self.addSubview(button1)
        self.addSubview(button2)
    }
}
