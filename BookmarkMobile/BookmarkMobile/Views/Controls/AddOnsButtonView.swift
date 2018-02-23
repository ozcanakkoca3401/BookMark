//
//  AddOnsButton.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 21.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

/* sample usage */

//var headerView: AddOnsButtonView = {
//    let view = AddOnsButtonView()
//    return view
//}()

/* loadview or viewdidload */
//headerView.frame = CGRect(x: 150, y: 200, width: 150, height: 50)
//view.addSubview(headerView)

import UIKit
import SnapKit


@IBDesignable public class AddOnsButtonView: RoundView {
    
    @IBInspectable var icon: String = "" {
        didSet {
            iconLabel.text = icon
        }
    }
    
    @IBInspectable var price: String = "" {
        didSet {
            priceLabel.text = price
        }
    }
    
    @IBInspectable var product: String = "" {
        didSet {
            productDescriptionLabel.text = product
        }
    }
    

//    var moneyImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.backgroundColor = .blue
//        imageView.image = UIImage(named: "dolar")
//        return imageView
//    }()
    
    var iconLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "$"
        label.EBcolor = Styling.colorForCode(.themeBlue)
        label.textAlignment = .center
        label.EBfont = Styling.font(weight: .bold, size: 20)
        
        return label
    }()
    
    var priceLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "5"
        label.EBcolor = Styling.colorForCode(.themeBlue)
        label.textAlignment = .center
        label.EBfont = Styling.font(weight: .bold, size: 20)
        
        return label
    }()
    
    var productDescriptionLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "500 MB Shareable Data"
        label.textAlignment = .left
        label.EBfont = UIFont.systemFont(ofSize: 15)
        
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
        
        self.delegate = self
        super.initialize()
        self.addSubview(iconLabel)
        self.addSubview(priceLabel)
        self.addSubview(productDescriptionLabel)
        
//        moneyImageView.snp.makeConstraints { (make) in
//            make.width.equalTo(30)
//            make.height.equalTo(30)
//            make.left.equalTo(self).offset(10)
//            make.centerY.equalTo(self)
//        }
       
        iconLabel.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.left.equalTo(self).offset(15)
            make.centerY.equalTo(self)
        }

        priceLabel.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(30)
            make.left.equalTo(iconLabel).offset(15)
            make.centerY.equalTo(self)
        }

        productDescriptionLabel.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.left.equalTo(priceLabel).offset(30)
            make.right.equalTo(self).offset(-15)
            make.centerY.equalTo(self)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

extension AddOnsButtonView: TouchableProtocol {
    func didTrigger() {
        print("heyoo")
        layer.borderWidth = 1.4
        borderColor = Styling.colorForCode(.themeBlue)
    }
    
    
}
