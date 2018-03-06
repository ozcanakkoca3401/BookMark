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

    @IBInspectable var color: UIColor = Styling.colorForCode(.usageGreen) {
        didSet {
            headerView.backgroundColor = color
            middleView.backgroundColor = color
            avgLabel.EBcolor = color
            mbLabel.EBcolor = color
            dayLabel.EBcolor = color
         }
    }
    
    var headerView: EBView = {
        let headerView = EBView()
        headerView.backgroundColor = Styling.colorForCode(.usageGreen)
    
        return headerView
        
    }()
    
    var middleView: EBView = {
        let middleView = EBView()
        middleView.backgroundColor = Styling.colorForCode(.usageGreen)

        return middleView

    }()

    var footerView: FooterView = {
        let footerView = FooterView()
        footerView.topLabel.EBtext = "You have so much data for this period that you could help those in need!"
        footerView.topLabel.EBcolor = Styling.colorForCode(.usageGreen)
        
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
    
    var headerButton: HeaderView = {
        let button = HeaderView()
        
        return button
    }()

    var avgLabel: EBLabel = {
        let avgLabel = EBLabel()
        avgLabel.EBtext = "Avg."
        //avgLabel.EBcolor = Styling.colorForCode(.usageGreen)
        avgLabel.font = Styling.font(weight: .bold, size: 12)
        avgLabel.textAlignment = .right
        avgLabel.labelBackgroundColor = Styling.colorForCode(.white)

        return avgLabel
    }()

    var mbLabel: EBLabel = {
        let mbLabel = EBLabel()
        mbLabel.EBtext = "120 MB"
        //mbLabel.EBcolor = Styling.colorForCode(.usageGreen)
        mbLabel.font = Styling.font(weight: .bold, size: 22)
        mbLabel.textAlignment = .center
        mbLabel.labelBackgroundColor = Styling.colorForCode(.white)

        return mbLabel
    }()

    var dayLabel: EBLabel = {
        let dayLabel = EBLabel()
        dayLabel.EBtext = "/ DAY"
        //dayLabel.EBcolor = Styling.colorForCode(.usageGreen)
        dayLabel.font = Styling.font(weight: .bold, size: 12)
        dayLabel.textAlignment = .left
        dayLabel.labelBackgroundColor = Styling.colorForCode(.white)

        return dayLabel
    }()

    var dataLabel: EBLabel = {
        let dataLabel = EBLabel()
        dataLabel.EBtext = "DATA"
        dataLabel.EBcolor = Styling.colorForCode(.white)
        dataLabel.font = Styling.font(weight: .bold, size: 12)
        dataLabel.textAlignment = .center

        return dataLabel
    }()

    var daysLabel: EBLabel = {
        let daysLabel = EBLabel()
        daysLabel.EBtext = "22 days left"
        daysLabel.EBcolor = Styling.colorForCode(.white)
        daysLabel.font = Styling.font(weight: .bold, size: 12)
        daysLabel.textAlignment = .center

        return daysLabel
    }()
    
    var usageImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        //imageView.backgroundColor = .blue
        imageView.image = UIImage(named: "usagee")
        return imageView
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
        
        headerView.backgroundColor = color
        middleView.backgroundColor = color
        avgLabel.EBcolor = color
        mbLabel.EBcolor = color
        dayLabel.EBcolor = color
        //self.backgroundColor = UIColor.black

          self.addSubview(headerView)
          self.addSubview(middleView)
          self.addSubview(footerView)
          headerView.addSubview(headerButton)
          headerView.addSubview(headerLabel)
          middleView.addSubview(avgLabel)
          middleView.addSubview(mbLabel)
          middleView.addSubview(dayLabel)
          middleView.addSubview(dataLabel)
          middleView.addSubview(daysLabel)
          middleView.addSubview(usageImageView)

        headerView.snp.makeConstraints { (make) in
            //  make.width.equalTo(250)
            make.height.equalTo(120)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(self).offset(0)
        }

        middleView.snp.makeConstraints { (make) in
            //            make.width.equalTo(250)
            make.height.equalTo(120)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.top.equalTo(headerView.snp.bottom).offset(0)
        }

        footerView.snp.makeConstraints { (make) in
            //  make.width.equalTo(250)
            make.height.equalTo(155)
            make.left.equalTo(self).offset(20)
            make.right.equalTo(self).offset(-20)
            make.top.equalTo(middleView.snp.bottom).offset(0)
        }
        
        headerButton.snp.makeConstraints { (make) in
            make.height.equalTo(60)
            make.left.equalTo(headerView).offset(60)
            make.right.equalTo(headerView).offset(-60)
            make.top.equalTo(headerView).offset(8)
            
        }
     
          headerLabel.snp.makeConstraints { (make) in
//            make.width.equalTo(100)
            make.height.equalTo(60)
            make.left.equalTo(headerView).offset(0)
            make.right.equalTo(headerView).offset(0)
            make.top.equalTo(headerView).offset(60)
//
         }
//        
        avgLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(middleView).dividedBy(2)
            make.left.equalTo(middleView).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(60)
            
        }

        mbLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(middleView).dividedBy(2)
            make.left.equalTo(avgLabel.snp.right).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(60)
            
        }

        dayLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(middleView).dividedBy(2)
            make.left.equalTo(mbLabel.snp.right).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(60)
            
        }

        dataLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(middleView).dividedBy(4)
            make.left.equalTo(middleView).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(30)
            
        }

        daysLabel.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(middleView).dividedBy(4)
            make.right.equalTo(middleView).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(30)
            
        }
        
        usageImageView.snp.makeConstraints { (make) in
            make.width.equalTo(middleView).dividedBy(3)
            make.height.equalTo(middleView).dividedBy(2).offset(27)
            make.left.equalTo(dataLabel.snp.right).offset(0)
            //make.right.equalTo(headerView).offset(0)
            make.top.equalTo(middleView).offset(0)
            
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
