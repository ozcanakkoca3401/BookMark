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
    
    var phoneImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "phone")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var leftLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "514-428-0578"
        label.EBcolor = Styling.colorForCode(.themeGray)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 15)
        
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
        
        phoneImageView.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.left.equalTo(leftLabel.snp.right).offset(70)
            make.centerX.equalTo(self)
        }
        
       leftLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(10)
            make.bottom.equalTo(self).dividedBy(2).offset(5)
            make.height.equalTo(30)
        }
        
        gbLabel.snp.makeConstraints { (make) in
            make.top.equalTo(leftLabel.snp.bottom).offset(-10)
            make.left.equalTo(self).offset(10)
            make.height.equalTo(30)
        }
        
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
