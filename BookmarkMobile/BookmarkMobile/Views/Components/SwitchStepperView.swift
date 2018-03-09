//
//  SwitchStepperView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 4.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class SwitchStepperView: RoundView {
    
    @IBInspectable var sms: String = "" {
        didSet {
            smsLabel.text = sms
        }
    }
    
    @IBInspectable var smsL: String = "" {
        didSet {
            secondSmsLabel.text = smsL
        }
    }
    
    @IBInspectable var limit: String = "" {
        didSet {
            limitLabel.text = limit
        }
    }
    
    var smsLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "SMS"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .left
        label.font = Styling.font(weight: .bold, size: 13)
        
        return label
    }()
    
    var limitLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "0"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 25)
        
        return label
    }()
    
    var secondSmsLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "sms"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 16)
        
        return label
    }()
    
    var stepperSwitch: UISwitch = {
        let sswitch = UISwitch()
        sswitch.onTintColor = Styling.colorForCode(.themeBlue)
        
        return sswitch
        
    }()
    
    // code initialize
    public override init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    // code initialize
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    // storyboard initialize
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    override func initialize() {
        
        super.initialize()
        stepperSwitch.addTarget(self, action: #selector(stateChanged), for: UIControlEvents.valueChanged)
        self.bgColor = Styling.colorForCode(.stepperGray)
        
        addSubview(smsLabel)
        addSubview(limitLabel)
        addSubview(secondSmsLabel)
        addSubview(stepperSwitch)
        
        stepperSwitch.snp.makeConstraints { (make) in
            make.right.equalTo(self).offset(-20)
            make.centerY.equalTo(self)

        }
        
        smsLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(5)
            make.left.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-15)
        }
        
        limitLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }
        
        secondSmsLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(limitLabel.snp.right).offset(5)
        }
    }
    
    @objc func stateChanged(switchState: UISwitch) {
        
        if switchState.isOn {
            self.bgColor = Styling.colorForCode(.themeMediumGray)
            limitLabel.EBtext = "OO"
            secondSmsLabel.EBtext = "Unlimited"
        } else {
            self.bgColor = Styling.colorForCode(.stepperGray)
            limitLabel.EBtext = "0"
            secondSmsLabel.EBtext = "sms"
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
