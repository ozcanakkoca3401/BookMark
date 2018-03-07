//
//  EBTopLoyaltyView.swift
//  BookmarkMobile
//
//  Created by Umut on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class EBTopLoyaltyView: RoundView {

    @IBInspectable var viewBackgroundColor: UIColor = Styling.colorForCode(.white) {
        didSet {
            backgroundColor = viewBackgroundColor
        }
    }
    
    var topLeftLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Level 7"
        label.font = Styling.font(weight: .bold, size: 20)
        label.EBcolor = Styling.colorForCode(.themeMediumGray)
        
        return label
    }()
    
    var bottomLeftLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "32 500 XP"
        label.font = Styling.font(weight: .bold, size: 16)
        label.EBcolor = Styling.colorForCode(.themeMediumGray)
        
        return label
    }()
    
    var topRightLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "350 XP to NEXT LEVEL"
        label.font = Styling.font(weight: .regular, size: 16)
        label.EBcolor = Styling.colorForCode(.themeGray)
        label.textAlignment = .right
        label.numberOfLines = 2
        
        return label
    }()
    
    var bottomRightLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "8"
        label.font = Styling.font(weight: .bold, size: 20)
        label.EBcolor = Styling.colorForCode(.themeMediumGray)
        
        return label
    }()
    
    var tlSlider: HorizontalSlider = {
        let slider = HorizontalSlider()
        
        return slider
    }()
    
    var bottomCenterLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "View details and history"
        label.font = Styling.font(weight: .regular, size: 14)
        label.EBcolor = Styling.colorForCode(.themeGray)
        
        return label
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
        
        backgroundColor = viewBackgroundColor
        layer.shadowColor = Styling.colorForCode(.themeDarkGray).cgColor
        layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        layer.shadowOpacity = 0.5
        borderColor = Styling.colorForCode(.themeClear)
        borderWidth = 0
        
        self.addSubview(topLeftLabel)
        self.addSubview(bottomLeftLabel)
        self.addSubview(topRightLabel)
        self.addSubview(bottomRightLabel)
        self.addSubview(tlSlider)
        self.addSubview(bottomCenterLabel)
        
        topLeftLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(self).offset(20)
        }

        bottomLeftLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topLeftLabel.snp.bottom)
            make.left.equalTo(self).offset(20)
        }

        topRightLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.right.equalTo(self).offset(-20)
            make.width.equalTo(140)
        }
        
        bottomRightLabel.snp.makeConstraints { (make) in
            make.top.equalTo(topRightLabel.snp.bottom).offset(10)
            make.right.equalTo(self).offset(-20)
        }
        
        tlSlider.snp.makeConstraints { (make) in
            make.top.equalTo(bottomLeftLabel.snp.bottom).offset(5)
            make.left.equalTo(self).offset(20)
            make.right.equalTo(bottomRightLabel.snp.left).offset(-15)
        }
        
        bottomCenterLabel.snp.makeConstraints { (make) in
            make.top.equalTo(tlSlider.snp.bottom).offset(5)
            make.right.equalTo(self).offset(-20)
        }
    }
    
    override public func layoutSubviews() { // refresh durumunda...
        super.layoutSubviews()
    }
}
