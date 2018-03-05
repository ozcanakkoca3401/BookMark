//
//  EBLevelKnowledge.swift
//  BookmarkMobile
//
//  Created by Umut on 5.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class EBLevelKnowledge: RoundView {

    var topRightView: EBView = {
        let view = EBView()
//        view.backgroundColor = UIColor.brown
        
        return view
    }()
    
    var topLeftView: EBView = {
        let view = EBView()
        view.backgroundColor = Styling.colorForCode(.themeMediumGray)
        
        return view
    }()
    
    var xpLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "7000 XP"
        label.font = Styling.font(weight: .bold, size: 14)
        
        return label
    }()
    
    var horizontalView: EBView = {
        let view = EBView()
        view.backgroundColor = Styling.colorForCode(.themeGray)
        
        return view
    }()
    
    var badgesLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "6 BADGES"
        label.font = Styling.font(weight: .bold, size: 14)
        
        return label
    }()
    
    var horizontalView2: EBView = {
        let view = EBView()
        view.backgroundColor = Styling.colorForCode(.themeGray)
        
        return view
    }()
    
    var rewardsLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "3 REWARDS"
        label.font = Styling.font(weight: .bold, size: 14)
        
        return label
    }()
    
    var levelLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "LEVEL"
        label.font = Styling.font(weight: .bold, size: 15)
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        
        return label
    }()
    
    var numberLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "7"
        label.font = Styling.font(weight: .bold, size: 65)
        label.EBcolor = Styling.colorForCode(.white)
        label.textAlignment = .center
        
        return label
    }()
    
    var horizontalSlider: CHorizontalSlider = {
        let slider = CHorizontalSlider()
    
        return slider
    }()
    
    public override init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }
    
    override func initialize() {
        
        super.initialize()
        borderColor = Styling.colorForCode(.themeClear)
        bgColor = Styling.colorForCode(.white)
        
        self.addSubview(topRightView)
        self.addSubview(topLeftView)
        self.addSubview(horizontalSlider)
        topRightView.addSubview(xpLabel)
        topRightView.addSubview(horizontalView)
        topRightView.addSubview(badgesLabel)
        topRightView.addSubview(horizontalView2)
        topRightView.addSubview(rewardsLabel)
        topLeftView.addSubview(levelLabel)
        topLeftView.addSubview(numberLabel)
        
        topRightView.snp.makeConstraints { (make) in
            make.height.equalTo(self).dividedBy(2).offset(-20)
            make.width.equalTo(self).dividedBy(2).offset(-20)
            make.top.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
        }
        
        topLeftView.snp.makeConstraints { (make) in
            make.height.equalTo(self).dividedBy(2).offset(-50)
            make.width.equalTo(self).dividedBy(2).offset(-25)
            make.top.equalTo(self).offset(0).offset(30)
            make.left.equalTo(self).offset(0).offset(35)
        }
        
        xpLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topRightView).offset(30)
            make.left.equalTo(topRightView).offset(10)
        }
        
        horizontalView.snp.makeConstraints { (make) in
            make.height.equalTo(1)
            make.top.equalTo(xpLabel.snp.bottom).offset(10)
            make.left.equalTo(topRightView).offset(0)
            make.right.equalTo(topRightView).offset(-30)
        }
        
        badgesLabel.snp.makeConstraints { (make) in
            make.top.equalTo(horizontalView.snp.bottom).offset(10)
            make.left.equalTo(topRightView).offset(10)
        }
        
        horizontalView2.snp.makeConstraints { (make) in
            make.height.equalTo(1)
            make.top.equalTo(badgesLabel.snp.bottom).offset(10)
            make.left.equalTo(topRightView).offset(0)
            make.right.equalTo(topRightView).offset(-30)
        }
        
        rewardsLabel.snp.makeConstraints { (make) in
            make.top.equalTo(horizontalView2.snp.bottom).offset(10)
            make.left.equalTo(topRightView).offset(10)
        }
        
        horizontalSlider.snp.makeConstraints { (make) in
            make.top.equalTo(topRightView.snp.bottom).offset(25)
//            make.height.equalTo(20)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
        }
        
        levelLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topLeftView).offset(5)
            make.left.equalTo(topLeftView)
            make.right.equalTo(topLeftView)
        }
        
        numberLabel.snp.makeConstraints { (make) in
            make.top.equalTo(levelLabel.snp.bottom)
            make.left.equalTo(topLeftView)
            make.right.equalTo(topLeftView)
        }
    }

}
