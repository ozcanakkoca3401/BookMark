//
//  StepperButton.swift
//  BookmarkMobile
//
//  Created by Umut on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

protocol StepperProtocol {
    func minus()
    func plus()
}

class StepperButton: RoundView {
    
    var stepperDelegate: StepperProtocol?

    private var button1:RoundButton!
    private var button2:RoundButton!
    
    public override init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupStepperButton()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
        setupStepperButton()
    }
    
    override func initialize() {
        button1 = RoundButton(frame: CGRect(x: 0, y: 0, width: 35, height: 35))
        button2 = RoundButton(frame: CGRect(x: 40, y: 0, width: 35, height: 35))
        button1.bgColor = Styling.colorForCode(.themeBlue)
        button2.bgColor = Styling.colorForCode(.themeBlue)
        button1.addTarget(self, action: #selector(StepperButton.minusT), for: .touchUpInside)
        button2.addTarget(self, action: #selector(StepperButton.plusT), for: .touchUpInside)
    }

    func setupStepperButton(){
        
//        button1.setImage(UIImage(named:""), for: .normal)
//        button2.setImage(UIImage(named:""), for: .normal)
        
        button1.setTitle("-", for: .normal)
        button2.setTitle("+", for: .normal)
        
        self.addSubview(button1)
        self.addSubview(button2)
    }
    
    @objc func minusT(){
        stepperDelegate?.minus()
    }
    
    @objc func plusT(){
        stepperDelegate?.plus()
    }
    
}
