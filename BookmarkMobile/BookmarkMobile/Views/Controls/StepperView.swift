//
//  StepperView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 2.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class StepperView: RoundView {
    
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
        
        self.bgColor = Styling.colorForCode(.stepperGray)

//        addSubview(dataLabel)
//        addSubview(gbChangeLabel)
//        addSubview(gbLabel)
          addSubview(capacityView)
          addSubview(stepperButton)

        
        stepperButton.snp.makeConstraints { (make) in
            
            make.right.equalTo(self).offset(-15)
            make.centerY.equalTo(self)
            
        }
        
        capacityView.snp.makeConstraints { (make) in
            
            make.left.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
            make.bottom.equalTo(self).offset(0)
        }
     }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

