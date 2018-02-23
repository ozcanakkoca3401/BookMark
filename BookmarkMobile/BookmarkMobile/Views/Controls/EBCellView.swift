//
//  EBCellView.swift
//  BookmarkMobile
//
//  Created by Umut on 23.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import SnapKit

@IBDesignable public class EBCellView: EBView {

    var daysLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "11 DAYS LEFT"
        label.EBcolor = Styling.colorForCode(.themeDarkBlue)
        label.EBfont = Styling.font(weight: .regular, size: 15)
        return label
    }()
    
    var priceLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "$65.00"
        label.textAlignment = .right
        label.EBfont = Styling.font(weight: .bold, size: 20)
        return label
    }()
    
    var invoiceButton: RoundButton = {
        let button = RoundButton()
        button.title = "INVOICE HISTORY"
        button.borderColor = Styling.colorForCode(.themeGray)
        button.setTitleColor(Styling.colorForCode(.themeGray), for: .normal)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        
        return button
    }()
    
    var manageButton: RoundButton = {
        let button = RoundButton()
        button.title = "MANAGE"
        button.borderColor = Styling.colorForCode(.themeGray)
        button.setTitleColor(Styling.colorForCode(.themeGray), for: .normal)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
        
        return button
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
        
        self.addSubview(daysLabel)
        self.addSubview(priceLabel)
        self.addSubview(invoiceButton)
        self.addSubview(manageButton)
        
        daysLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(20)
            make.left.equalTo(self).offset(15)
            make.width.equalTo(self).dividedBy(2)
        }

        priceLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(20)
            make.right.equalTo(self).offset(-15)
            make.width.equalTo(self).dividedBy(2)
        }
        
        invoiceButton.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.top.equalTo(60)
            make.left.equalTo(15)
            make.width.equalTo(self).dividedBy(2).offset(-20)
        }
        
        manageButton.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.top.equalTo(60)
            make.right.equalTo(-15)
            make.width.equalTo(self).dividedBy(2).offset(-20)
        }
    }
}
