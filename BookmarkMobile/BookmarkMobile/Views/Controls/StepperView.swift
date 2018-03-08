//
//  StepperView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 2.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class StepperView: RoundView, StepperProtocol {
    
    @IBInspectable var data: String = "" {
        didSet {
            dataLabel.text = data
        }
    }

    @IBInspectable var gb: String = "" {
        didSet {
            gbLabel.text = gb
        }
    }
    
    @IBInspectable var gbChange: String = "" {
        didSet {
            gbChangeLabel.text = gbChange
        }
    }
    
    var capacityWith: CGFloat = 0
    var plusButtonisEnable = false
    var changeLabelValue: Int = 0

    var dataLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Data"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .left
        label.font = Styling.font(weight: .bold, size: 13)

        return label
    }()
    
    var gbChangeLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "0"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 25)
        
        return label
    }()

    var gbLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "GB"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 16)

        return label
    }()

    var capacityView: RoundView = {
        let view = RoundView()
        view.bgColor = Styling.colorForCode(.themeMediumGray)

        return view
    }()
    
    var stepperButton: StepperButton = {
        let button = StepperButton()

        return button
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
        stepperButton.stepperDelegate = self
        
        stepperButton.leftButton.isEnabled = false
        stepperButton.leftButton.bgColor = Styling.colorForCode(.themeLight)
        
        self.bgColor = Styling.colorForCode(.stepperGray)
        
        addSubview(capacityView)
        addSubview(dataLabel)
        addSubview(gbChangeLabel)
        addSubview(gbLabel)
        addSubview(stepperButton)

        stepperButton.snp.makeConstraints { (make) in
            make.height.equalTo(35)
            make.width.equalTo(70)
            make.right.equalTo(self).offset(-15)
            make.centerY.equalTo(self)

        }
        
        capacityView.snp.makeConstraints { (make) in
            make.width.equalTo(self.capacityWith)
            make.height.equalTo(60)
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.bottom.equalTo(self).offset(0)
        }
        
        dataLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(5)
            make.left.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-15)
        }
        
        gbChangeLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }
        
        gbLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(gbChangeLabel.snp.right).offset(5)
        }
     }
    
    func minus() {
        
        capacityWith -= 50
        capacityView.frame.size.width = CGFloat(capacityWith)
        changeLabelValue -= 1
        gbChangeLabel.text  = String(changeLabelValue)
        
        if plusButtonisEnable {
            stepperButton.rightButton.bgColor = Styling.colorForCode(.themeBlue)
            stepperButton.rightButton.isEnabled = true
        }
        
        if self.capacityWith == 0 {
            stepperButton.leftButton.bgColor = Styling.colorForCode(.themeLight)
            stepperButton.leftButton.isEnabled = false
        }
    }
    
    func plus() {
        
        capacityWith += 50
        capacityView.frame.size.width = CGFloat(capacityWith)
        stepperButton.leftButton.isEnabled = true
        stepperButton.leftButton.bgColor = Styling.colorForCode(.themeBlue)
        changeLabelValue += 1
        gbChangeLabel.text  = String(changeLabelValue)
        
        if self.capacityWith >= self.frame.size.width {
            stepperButton.rightButton.bgColor = Styling.colorForCode(.themeLight)
            plusButtonisEnable  = true
            stepperButton.rightButton.isEnabled = false
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
