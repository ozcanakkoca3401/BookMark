//
//  ExpendHeaderView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 28.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class ExpendHeaderView: EBView {
    
    @IBInspectable var leftLbl: String = "" {
        didSet {
            leftLabel.text = leftLbl
        }
    }
    
    @IBInspectable var gbLbl: String = "" {
        didSet {
            gbLabel.text = gbLbl
        }
    }
    
    @IBInspectable var image: UIImage? {
        didSet {
            phoneImageView.image = image
        }
    }
    
//    @IBInspectable var upToDate: UIButton? {
//        didSet {
//            
//        }
//    }
    
    var phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "blackPhone")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    var leftLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "514-428-0578"
        label.EBcolor = Styling.colorForCode(.themeGray)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 13)
        
        return label
    }()
    
    var gbLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "7 GB"
        label.EBcolor = Styling.colorForCode(.black)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 15)
        
        return label
    }()
    
    var upToDate: UIButton = {
        let button = UIButton()
        button.setTitle("Up To Date", for: .normal)
        button.setTitleColor(Styling.colorForCode(.themeGray), for: .normal)
        button.titleLabel?.font = Styling.font(weight: .regular, size: 13)
        
        return button
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
        self.addSubview(phoneImageView)
        self.addSubview(leftLabel)
        self.addSubview(gbLabel)
        self.addSubview(upToDate)
        
       leftLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(15)
            make.bottom.equalTo(self).dividedBy(2).offset(5)
            make.height.equalTo(30)
        }
        
        gbLabel.snp.makeConstraints { (make) in
            make.top.equalTo(leftLabel.snp.bottom).offset(-10)
            make.left.equalTo(self).offset(15)
            make.height.equalTo(30)
        }
        
        phoneImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(0)
            make.bottom.equalTo(self).offset(0)
            make.centerX.equalTo(self)
        }
        
        upToDate.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(0)
            make.bottom.equalTo(self).offset(0)
            make.right.equalTo(self).offset(-15)
            //make.right.equalTo(phoneImageView.snp.left).offset(-15)
            make.centerY.equalTo(self)
        }
        
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
