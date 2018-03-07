//
//  mainScrollView.swift
//  BookmarkMobile
//
//  Created by Umut on 4.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class MainScrollView: EBView {
    
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
    var sumWidth: CGFloat = 40
    var parametricCount: Int = 4
    var nameArray: [String] = ["Overview", "Notifications", "My Profile", "Plans & Billing"]
    var imageArray: [String] = ["topMenu1", "topMenu2", "topMenu3", "topMenu4"]
    
    var sc: EBScrollView = {
        let scroll = EBScrollView()
        scroll.bgColor = Styling.colorForCode(.themeGray)
        
       return scroll
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
        
        for i in 0..<parametricCount {
            
            let button = TopMenuButtonView(frame: CGRect(x: sumWidth, y: 10, width: 70, height: 60))
            button.titleLabel.EBtext = nameArray[i]
            button.menuImageView.image = UIImage(named: imageArray[i])
            button.titleLabel.EBcolor = Styling.colorForCode(.themeMediumGray)
            button.bgColor = Styling.colorForCode(.white)
            button.titleLabel.font = Styling.font(weight: .bold, size: 9)
//            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
            
            sc.addSubview(button)
            sumWidth = 15 + sumWidth + 60

        }
        
        sc.contentSize = CGSize(width: sumWidth + 20, height: sc.frame.size.height)
        self.addSubview(sc)
        
        sc.snp.makeConstraints { (make) in
            make.top.equalTo(self)
            make.width.equalTo(self)
            make.bottom.equalTo(self)
            make.centerX.equalTo(self)
        }
    }
    
}
