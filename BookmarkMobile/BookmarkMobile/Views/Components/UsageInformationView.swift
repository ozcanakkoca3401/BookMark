//
//  UsageInformationView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 5.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

@IBDesignable public class UsageInformationView: RoundView {
    
    var headerView: RoundView = {
        let headerView = RoundView()
        headerView.backgroundColor = Styling.colorForCode(.usageGreen)
    
        return headerView
        
    }()
    
    var middleView: EBView = {
        let middleView = EBView()
        middleView.backgroundColor = Styling.colorForCode(.usageGreen)
        
        return middleView
        
    }()

    var footerView: EBView = {
        let footerView = EBView()
        footerView.backgroundColor = UIColor.blue
        
        return footerView
        
    }()
    
    var headerLabel: EBLabel = {
       let headerLabel = EBLabel()
        headerLabel.EBtext = "So far, so good!"
        headerLabel.EBcolor = Styling.colorForCode(.white)
        headerLabel.font = Styling.font(weight: .bold, size: 22)
        headerLabel.textAlignment = .center
        
        return headerLabel
    }()
    
    var avgLabel: EBLabel = {
        let avgLabel = EBLabel()
        avgLabel.EBtext = "Avg."
        avgLabel.EBcolor = Styling.colorForCode(.usageGreen)
        avgLabel.font = Styling.font(weight: .bold, size: 12)
        avgLabel.textAlignment = .right
        avgLabel.backgroundColor = Styling.colorForCode(.white)
        
        return avgLabel
    }()
    
    var mbLabel: EBLabel = {
        let mbLabel = EBLabel()
        mbLabel.EBtext = "120 MB"
        mbLabel.EBcolor = Styling.colorForCode(.usageGreen)
        mbLabel.font = Styling.font(weight: .bold, size: 22)
        mbLabel.textAlignment = .center
        mbLabel.backgroundColor = Styling.colorForCode(.white)
        
        return mbLabel
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
        
        //self.backgroundColor = UIColor.black

        self.addSubview(headerView)
        self.addSubview(middleView)
        self.addSubview(footerView)
        headerView.addSubview(headerLabel)
        middleView.addSubview(avgLabel)
        middleView.addSubview(mbLabel)

        headerView.snp.makeConstraints { (make) in
            //  make.width.equalTo(250)
            make.height.equalTo(100)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
        }

        middleView.snp.makeConstraints { (make) in
            //            make.width.equalTo(250)
            make.height.equalTo(100)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(self).offset(99)
        }

        footerView.snp.makeConstraints { (make) in
            //  make.width.equalTo(250)
            make.height.equalTo(100)
            make.left.equalTo(self).offset(20)
            make.right.equalTo(self).offset(-20)
            make.top.equalTo(self).offset(199)
        }
        
        headerLabel.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(60)
            make.left.equalTo(headerView).offset(0)
            make.right.equalTo(headerView).offset(0)
            make.top.equalTo(headerView).offset(50)
            
        }
        
        avgLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(50)
            make.left.equalTo(middleView).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(50)
            
        }
        
        mbLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(50)
            make.left.equalTo(avgLabel.snp.right).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(50)
            
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
