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
    
//    @IBInspectable var image: UIImage? {
//        didSet {
//            menuImageView.image = image
//        }
//    }
    
    @IBInspectable var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    var loyaltyButton: RoundButton = {
        let button = RoundButton()
        button.setImage(UIImage(named: "topMenu1"), for: .normal)
        button.bgColor = Styling.colorForCode(.white)
        button.cornerRadius = 5
        
        return button
    }()
    
//    var menuImageView: UIImageView = {
//        let imageView = UIImageView()
//       // imageView.image = UIImage(named: "topMenu1")
//        imageView.contentMode = .scaleAspectFit
//
//        return imageView
//    }()
    
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
       // loyaltyButton.addSubview(menuImageView)
        
        loyaltyButton.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.top.equalTo(self).offset(5)
            make.right.equalTo(self).offset(-5)
            make.left.equalTo(self).offset(5)
           // make.bottom.equalTo(self).offset(-20)
            
        }
        
//        menuImageView.snp.makeConstraints { (make) in
//            make.top.equalTo(loyaltyButton).offset(10)
//            make.width.equalTo(50)
//            make.height.equalTo(30)
//            make.centerX.equalTo(self)
//        }
        
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
