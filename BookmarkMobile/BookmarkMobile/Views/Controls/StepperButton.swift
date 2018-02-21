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
    
    var leftButton: RoundButton = {
        let button = RoundButton()
        button.bgColor = Styling.colorForCode(.themeBlue)
        button.setTitle("-", for: .normal)
        button.addTarget(self, action: #selector(StepperButton.minusT), for: .touchUpInside)
        return button
    }()
    
    var rightButton: RoundButton = {
        let button = RoundButton()
        button.bgColor = Styling.colorForCode(.themeBlue)
        button.setTitle("+", for: .normal)
        button.addTarget(self, action: #selector(StepperButton.plusT), for: .touchUpInside)
        return button
    }()
    
    public override init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
        setupStepperButton()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
        setupStepperButton()
    }
    
    override func initialize() {
        
    }

    func setupStepperButton(){
        self.addSubview(leftButton)
        self.addSubview(rightButton)
        
        leftButton.snp.makeConstraints { (make) in
            make.top.bottom.left.equalTo(self)
            make.width.equalTo(self).dividedBy(2).offset(-2.5)
        }
        
        rightButton.snp.makeConstraints { (make) in
            make.top.bottom.right.equalTo(self)
            make.width.equalTo(self).dividedBy(2).offset(-2.5)
        }
    }
    
    @objc func minusT(){
        stepperDelegate?.minus()
    }
    
    @objc func plusT(){
        stepperDelegate?.plus()
    }
}
