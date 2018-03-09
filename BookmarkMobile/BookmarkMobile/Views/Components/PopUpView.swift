//
//  PopUpView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 28.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

@IBDesignable public class PopUpView: RoundView {
    
    @IBInspectable var card: String = "" {
        didSet {
            cardLabel.text = card
        }
    }
    
    @IBInspectable var exp: String = "" {
        didSet {
            expLabel.text = exp
        }
    }
    
    @IBInspectable var image: UIImage? {
        didSet {
            cardImageView.image = image
        }
    }
    
    var cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "visa")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var cardLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Visa finishing with 003"
        label.EBcolor = Styling.colorForCode(.black)
        label.textAlignment = .center
        label.font = Styling.font(weight: .regular, size: 15)
        
        return label
    }()
    
    var expLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "06/2020"
        label.EBcolor = Styling.colorForCode(.black)
        label.textAlignment = .center
        label.font = Styling.font(weight: .regular, size: 15)
        
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
        self.addSubview(cardImageView)
        self.addSubview(cardLabel)
        self.addSubview(expLabel)
        
        cardImageView.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }
        
        cardLabel.snp.makeConstraints { (make) in
            make.left.equalTo(cardImageView.snp.right).offset(15)
            make.bottom.equalTo(self).dividedBy(2).offset(5)
            make.height.equalTo(30)
        }

        expLabel.snp.makeConstraints { (make) in
            make.top.equalTo(cardLabel.snp.bottom).offset(-10)
            make.left.equalTo(cardImageView.snp.right).offset(15)
            make.height.equalTo(30)
        }

    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
