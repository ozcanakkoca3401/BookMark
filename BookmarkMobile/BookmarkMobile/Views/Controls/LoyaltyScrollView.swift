//
//  LoyaltyScrollView.swift
//  BookmarkMobile
//
//  Created by Umut on 7.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class LoyaltyScrollView: EBView {
    
    //    @IBInspectable var bgColor: UIColor = Styling.colorForCode(.themeUltraLightGray) {
    //        didSet {
    //            self.backgroundColor = bgColor
    //        }
    //    }
    //
    //    @IBInspectable var rightImage: UIImage? {
    //        didSet {
    //            rightImageView.image = rightImage
    //        }
    //    }
    
    // #TODO: array içeriğini gönderme ve count unu dışarıdan gönderilebilir olarak düzenlenecek
    var sumWidth: CGFloat = 15
    var parametricCount: Int = 8
    var nameArray: [String] = ["+ 10 min", "+ 20 min", "+ 30 min", "+ 40 min", "+ 50 min", "+ 60 min", "+ 70 min", "+ 80 min"]
    
    var sc: EBScrollView = {
        let scroll = EBScrollView()
        scroll.bgColor = Styling.colorForCode(.themeUltraLightGray)
        
        return scroll
    }()
    
    var loyaltyLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "Current privileges that you're using"
        label.font = Styling.font(weight: .regular, size: 12)
        label.EBcolor = Styling.colorForCode(.themeGray)
        
        return label
    }()
    
    public override init() {
        super.init(frame: .zero)
        //        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        //        self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //        self.initialize()
    }
    
    override func initialize() {
        
        layer.shadowColor = Styling.colorForCode(.themeDarkGray).cgColor
        layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
        layer.shadowOpacity = 0.5
        
        for i in 0..<parametricCount {
            
            let button = LoyaltyButtonView(frame: CGRect(x: sumWidth, y: 10, width: 70, height: 80))
            button.titleLabel.EBtext = nameArray[i]
            //            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
            
            sc.addSubview(button)
            sumWidth = 15 + sumWidth + 60
            
        }
        
        sc.contentSize = CGSize(width: sumWidth + 20, height: sc.frame.size.height)
        self.addSubview(loyaltyLabel)
        self.addSubview(sc)
        
        loyaltyLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(15)
            make.left.equalTo(15)
        }
        
        sc.snp.makeConstraints { (make) in
            make.top.equalTo(loyaltyLabel.snp.bottom).offset(0)
            make.width.equalTo(self)
            make.bottom.equalTo(self)
            make.centerX.equalTo(self)
        }
    }
    
}
