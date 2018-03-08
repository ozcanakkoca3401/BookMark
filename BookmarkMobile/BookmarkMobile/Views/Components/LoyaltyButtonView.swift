//
//  LoyaltyButtonView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 7.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class LoyaltyButtonView: RoundView {
    
    @IBInspectable var image: UIImage? {
        didSet {
            loyaltyButton.setImage(UIImage(named: "topMenu1"), for: .normal)
        }
    }
    
    @IBInspectable var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    var loyaltyButton: RoundButton = {
        let button = RoundButton()
        button.bgColor = Styling.colorForCode(.white)
        button.cornerRadius = 5
        
        return button
    }()
    
    var titleLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "+ 10 min"
        label.EBcolor = Styling.colorForCode(.black)
        label.textAlignment = .center
        label.font = Styling.font(weight: .regular, size: 12)
        
        return label
    }()
    
    // code initialize
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
        super.initialize()
        
        self.borderWidth = 0
        self.borderColor = Styling.colorForCode(.themeGray)
        self.bgColor = Styling.colorForCode(.themeUltraLightGray)
        
        self.addSubview(titleLabel)
        self.addSubview(loyaltyButton)
        
        loyaltyButton.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.top.equalTo(self).offset(5)
            make.right.equalTo(self).offset(-5)
            make.left.equalTo(self).offset(5)
        }
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(loyaltyButton.snp.bottom).offset(5)
            make.right.equalTo(self).offset(0)
            make.left.equalTo(self).offset(0)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
}
