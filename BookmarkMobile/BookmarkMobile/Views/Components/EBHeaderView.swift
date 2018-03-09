//
//  HeaderView.swift
//  BookmarkMobile
//
//  Created by Umut on 23.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import SnapKit

@IBDesignable public class EBHeaderView: EBView {

    @IBInspectable var bgColor: UIColor = Styling.colorForCode(.themeUltraLightGray) {
        didSet {
            self.backgroundColor = bgColor
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            rightImageView.image = rightImage
        }
    }
    
    var dataLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "DATA"
        label.textAlignment = .left
        label.font = Styling.font(weight: .regular, size: 12)
        
        return label
    }()
    
    var usageLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "0.45"
        label.textAlignment = .left
        label.font = Styling.font(weight: .bold, size: 20)
        
        return label
    }()
    
    var gbLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "GB"
        label.textAlignment = .left
        label.font = Styling.font(weight: .regular, size: 15)
        
        return label
    }()
    
    var usableLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "11 GB"
        label.textAlignment = .left
        label.font = Styling.font(weight: .regular, size: 15)
        
        return label
    }()
    
    var rightImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "openIcon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var hSlider: HorizontalSlider = {
        let slider = HorizontalSlider()
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
        
        self.backgroundColor = bgColor
    
        self.addSubview(dataLabel)
        self.addSubview(usageLabel)
        self.addSubview(gbLabel)
        self.addSubview(usableLabel)
        self.addSubview(rightImageView)
        self.addSubview(hSlider)
        
        dataLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(5)
            make.left.equalTo(self).offset(15)
            make.right.equalTo(self).offset(-15)
        }
        
        usageLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self).offset(15)
            make.centerY.equalTo(self)
        }
        
        gbLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(usageLabel.snp.right).offset(5)
        }
        
        usableLabel.snp.makeConstraints { (make) in
            make.right.equalTo(self).offset(-65)
            make.centerY.equalTo(self)
        }
        
        rightImageView.snp.makeConstraints { (make) in
            make.width.equalTo(20)
            make.height.equalTo(20)
            make.right.equalTo(self).offset(-40)
            make.centerY.equalTo(self)
        }
        
        hSlider.snp.makeConstraints { (make) in
            make.right.equalTo(self).offset(-65)
            make.left.equalTo(self).offset(15)
            make.bottom.equalTo(self).offset(5)
        }
    }
}
