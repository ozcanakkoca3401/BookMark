//
//  ChangeButtonView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 22.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class ChangeButtonView: RoundView {
    
    @IBInspectable var image: UIImage? {
        didSet {
            iconImageView.image = image
        }
    }
    
    @IBInspectable var information: String = "" {
        didSet {
            informationLabel.text = information
        }
    }
    
//    @IBInspectable var change: UIButton? {
//        didSet {
//
//        }
//    }
    
    var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "visa")
       
        return imageView
    }()

    var informationLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "bilgeee"
        label.textAlignment = .center
        label.EBfont = Styling.font(weight: .regular, size: 15)
        
        return label
    }()
    
    var changeButton: UIButton = {
        let changeB = UIButton()
        changeB.setTitle("Change", for: .normal)
        changeB.titleLabel?.textColor = UIColor.white
        changeB.titleLabel?.font = Styling.font(weight: .regular, size: 11)
        changeB.backgroundColor = Styling.colorForCode(.themeBlue)
        
        return changeB
    }()
    
    // code initialize
    public override init() {
        super.init()
        
        initialize()
    }
    
    // code initialize
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    // storyboard initialize
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initialize()
    }
    
    override func initialize() {
        
        super.initialize()
        self.addSubview(iconImageView)
        self.addSubview(informationLabel)
        self.addSubview(changeButton)
        
        iconImageView.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
                }
        
        informationLabel.snp.makeConstraints { (make) in
            //make.width.equalTo(30)
            make.height.equalTo(30)
            make.left.equalTo(iconImageView).offset(35)
            //make.right.equalTo(changeButton).offset(-25)
            make.centerY.equalTo(self)
        }
        
        changeButton.snp.makeConstraints { (make) in
            make.width.equalTo(60)
            make.height.equalTo(60)
            make.right.equalTo(self).offset(0)
            make.centerY.equalTo(self)
        }

    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
