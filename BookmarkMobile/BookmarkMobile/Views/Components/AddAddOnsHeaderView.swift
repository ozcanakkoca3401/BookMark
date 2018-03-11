//
//  AddAddOnsHeaderView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 8.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

@IBDesignable public class AddAddOnsHeaderView: EBView {
    
    @IBInspectable var title: String = "" {
        didSet {
            //label.text = title
        }
    }
   
    @IBInspectable var image: UIImage = UIImage(named: "addOns")! {
        didSet {
            imageView.image = image
        }
    }
    
    var titleLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Data"
        label.EBcolor = Styling.colorForCode(.themeBlue)
        label.textAlignment = .center
        label.font = Styling.font(weight: .bold, size: 18)
        
        return label
    }()
    
    var imageView: UIImageView = {
        let icon = UIImageView()
    
        return icon
    }()
    
    var rightImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "blueArrow")
        imageView.contentMode = .scaleAspectFit
        
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
    
        imageView.image = image
        
        self.addSubview(imageView)
        self.addSubview(titleLabel)
        self.addSubview(rightImageView)
    
        titleLabel.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }
        
        imageView.snp.makeConstraints { (make) in
            make.width.equalTo(40)
            make.height.equalTo(40)
            make.centerY.equalTo(self)
            make.centerX.equalTo(self)
        }
        
        rightImageView.snp.makeConstraints { (make) in
            make.width.equalTo(20)
            make.height.equalTo(20)
            make.right.equalTo(self).offset(-20)
            make.centerY.equalTo(self)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
