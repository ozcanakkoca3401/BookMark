//
//  TopMenuButtonView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 7.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class TopMenuButtonView: RoundView {
    
    @IBInspectable var image: UIImage? {
        didSet {
            menuImageView.image = image
        }
    }
    
    @IBInspectable var title: String = "" {
        didSet {
           titleLabel.text = title
        }
    }
    
   var menuImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "topMenu1")
        imageView.contentMode = .scaleAspectFit

         return imageView
    }()
  
    var titleLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Overview"
        label.EBcolor = Styling.colorForCode(.themeDarkGray)
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
        self.borderColor = Styling.colorForCode(.themeClear)
        
        self.addSubview(titleLabel)
        self.addSubview(menuImageView)

        menuImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.width.equalTo(50)
            make.height.equalTo(30)
            make.centerX.equalTo(self)
        }

        titleLabel.snp.makeConstraints { (make) in
           make.top.equalTo(menuImageView.snp.bottom).offset(5)
           make.right.equalTo(self).offset(0)
           make.left.equalTo(self).offset(0)
        }
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
    }
}
