//
//  StepperComponentView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 4.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

@IBDesignable public class StepperComponentView: EBView {
    
    var stepperView: StepperView = {
        let stepperView = StepperView()
        
        return stepperView
    }()
    
    var switchStepperView: SwitchStepperView = {
        let switchStepperView = SwitchStepperView()
        
        return switchStepperView
    }()
    
    var secondStepperView: StepperView = {
        let stepperView = StepperView()
        stepperView.dataLabel.text = "VOICE"
        stepperView.gbLabel.text = "minutes"
        
        return stepperView
    }()
    
    public override init() {
        super.init()
        
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
        
        self.addSubview(stepperView)
        self.addSubview(switchStepperView)
        self.addSubview(secondStepperView)
        
        stepperView.snp.makeConstraints { (make) in
            //            make.width.equalTo(250)
            make.height.equalTo(60)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
        }
        
        switchStepperView.snp.makeConstraints { (make) in
            //            make.width.equalTo(250)
            make.height.equalTo(60)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(self).offset(65)
        }
        
        secondStepperView.snp.makeConstraints { (make) in
            //  make.width.equalTo(250)
            make.height.equalTo(60)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(self).offset(130)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

