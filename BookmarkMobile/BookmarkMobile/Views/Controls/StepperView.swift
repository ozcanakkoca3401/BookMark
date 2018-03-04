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
    
    var capacityWith:CGFloat = 0

    var dataLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Data"
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 13)

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
    
    var gbChangeLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = ""
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 20)
        
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

    var i: Int = {
       
        let i = 0
        
        return i
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
        
        self.bgColor = Styling.colorForCode(.stepperGray)

//        addSubview(dataLabel)
//        addSubview(gbChangeLabel)
//        addSubview(gbLabel)
          addSubview(capacityView)
          addSubview(stepperButton)

        stepperButton.snp.makeConstraints { (make) in
            //make.top.equalTo(self).offset(10)
            make.height.equalTo(35)
            make.width.equalTo(70)
            //make.left.equalTo(self).offset(20)
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
     }
    
    func minus() {
        
        if self.capacityWith == 0 {
            stepperButton.leftButton.bgColor = UIColor.red
            stepperButton.leftButton.isEnabled = false
            return
        }
        
        
        capacityWith -= 50
        capacityView.frame.size.width = CGFloat(capacityWith)
        
        print(capacityWith)
        
    }
    
    func plus() {
        
        
        if self.capacityWith >= self.frame.size.width {
            stepperButton.rightButton.bgColor = UIColor.red
            stepperButton.rightButton.isEnabled = false
            return
        }

        capacityWith += 50
        capacityView.frame.size.width = CGFloat(capacityWith)
        print(capacityWith)
    }
    
//    func calculateCapacity() -> Int {
//
//
////        var a = calculateCapacity()
////        a = a + 10
//        capacityWith += 30
//        return capacityWith
//
//    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
