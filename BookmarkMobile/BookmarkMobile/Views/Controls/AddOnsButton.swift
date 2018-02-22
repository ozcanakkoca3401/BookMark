//
//  AddOnsButton.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 21.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

/* sample usage */

//var headerView: HeaderView = {
//    let view = HeaderView()
//    return view
//}()

/* loadview or viewdidload */
//headerView.frame = CGRect(x: 150, y: 200, width: 150, height: 50)
//view.addSubview(headerView)

import UIKit
import SnapKit


@IBDesignable public class AddOnsButton: RoundView {
    
    @IBInspectable var image: UIImage? {
        didSet {
            moneyImageView.image = image
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
    

    var moneyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.image = UIImage(named: "phone")
        return imageView
    }()
    
    var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()
    
    var productDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "500 MB Shareable Data"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 8)
        
        return label
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
        
        self.delegate = self
        super.initialize()
        self.addSubview(moneyImageView)
        self.addSubview(priceLabel)
        self.addSubview(productDescriptionLabel)
        
        moneyImageView.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(20)
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }

        priceLabel.snp.makeConstraints { (make) in
            make.width.equalTo(30)
            make.height.equalTo(20)
            make.left.equalTo(moneyImageView).offset(25)
            make.centerY.equalTo(self)
        }

        productDescriptionLabel.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.left.equalTo(priceLabel).offset(25)
            make.right.equalTo(self).offset(-15)
            make.centerY.equalTo(self)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

extension AddOnsButton: TouchableProtocol {
    func didTrigger() {
        print("heyoo")
        layer.borderWidth = 1.4
        borderColor = Styling.colorForCode(.themeBlue)
    }
    
    
}
