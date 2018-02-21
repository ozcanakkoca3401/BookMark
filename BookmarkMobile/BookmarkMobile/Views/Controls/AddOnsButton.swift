//
//  AddOnsButton.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 21.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

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
    }
    
    
}


//
//// ChangeButton + view component...
//let myView = RoundView(frame: CGRect(x: 20, y: 100, width: 260, height: 60))
//myView.borderColor = UIColor.gray
//myView.backgroundColor = Styling.colorForCode(.themeLight)
//let viewLabel = UILabel(frame: CGRect(x: 70, y: 18, width: 200, height: 20))
//viewLabel.text = "500 MB Shareable Data"
//viewLabel.font = Styling.font(weight: .bold, size: 15)
//viewLabel.textColor = Styling.colorForCode(.themeGray)
//let priceLabel = UILabel(frame: CGRect(x: 45, y: 18, width: 30, height: 20))
//priceLabel.text = "5"
//priceLabel.font = Styling.font(weight: .regular, size: 25)
//priceLabel.textColor = Styling.colorForCode(.themeBlue)
//myView.addSubview(viewLabel)
//myView.addSubview(priceLabel)
//let changeButton = RoundButton(frame: CGRect(x: 200, y: 0, width: 60, height: myView.bounds.height))
//changeButton.setTitle("Change", for: .normal)
//changeButton.titleLabel?.font = Styling.font(weight: .regular, size: 13)
//changeButton.backgroundColor = Styling.colorForCode(.themeBlue)
//changeButton.cornerRadius = 5
//changeButton.borderColor = Styling.colorForCode(.themeBlue)
//myView.addSubview(changeButton)
//self.view.addSubview(myView)
//
////TouchableView component...
//let touchableView = RoundView(frame: CGRect(x: 20, y: 200, width: 260, height: 60))
//touchableView.borderColor = UIColor.gray
//let touchableViewLabel = UILabel(frame: CGRect(x: 70, y: 18, width: 200, height: 20))
//touchableViewLabel.text = "500 MB Shareable Data"
//touchableViewLabel.font = Styling.font(weight: .bold, size: 15)
//touchableViewLabel.textColor = Styling.colorForCode(.themeGray)
//let touchableViewPriceLabel = UILabel(frame: CGRect(x: 45, y: 18, width: 30, height: 20))
//touchableViewPriceLabel.text = "5"
//touchableViewPriceLabel.font = Styling.font(weight: .regular, size: 25)
//touchableViewPriceLabel.textColor = Styling.colorForCode(.themeBlue)
//touchableView.delegate = self
//touchableView.addSubview(touchableViewLabel)
//touchableView.addSubview(touchableViewPriceLabel)
//self.view.addSubview(touchableView)

