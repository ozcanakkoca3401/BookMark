//
//  InformationCellView.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import SnapKit

// #TODO: snaptki düzenlemeleri yapıldı. Sadece label ve round button için dışarıdan ve storyboarddan değiştirilebilir yapılacak

@IBDesignable public class InformationCellView: EBView {
    
    var nameLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "name"
        label.EBcolor = Styling.colorForCode(.themeGray)
        label.font = Styling.font(weight: .regular, size: 15)
        
        return label
    }()
    
    var secondNameLabel: EBLabel = {
        let label = EBLabel()
        label.EBtext = "John Doe"
        label.EBcolor = Styling.colorForCode(.black)
        label.font = Styling.font(weight: .regular, size: 15)
        
        return label
    }()
    
    var editButton: RoundButton = {
        let button = RoundButton()
        button.setImage(UIImage(named: "edit"), for: .normal)
        
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
        
        super.initialize()

        self.addSubview(nameLabel)
        self.addSubview(secondNameLabel)
        self.addSubview(editButton)
        
        nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(0)
            make.left.equalTo(self).offset(20)
            make.height.equalTo(self).dividedBy(2)
        }
        
        secondNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp.bottom).offset(0)
            make.left.equalTo(self).offset(20)
            make.height.equalTo(self).dividedBy(2)
        }
        
        editButton.snp.makeConstraints { (make) in
            make.height.equalTo(40)
            make.width.equalTo(40)
            make.centerY.equalTo(self)
            make.right.equalTo(self).offset(-10)
        }
    }
}
