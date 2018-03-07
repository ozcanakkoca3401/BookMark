//
//  EBMainLoyaltyView.swift
//  BookmarkMobile
//
//  Created by Umut on 7.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class EBMainLoyaltyView: EBView {
    
    //    @IBInspectable var isThumbInteractionEnabled: Bool = true {
    //        didSet {
    //            isUserInteractionEnabled = isThumbInteractionEnabled
    //        }
    //    }
    
    var topView: EBTopLoyaltyView = {
        let view = EBTopLoyaltyView()
        
        return view
    }()
    
    var scrolView: LoyaltyScrollView = {
        let view = LoyaltyScrollView()
        
        return view
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
        
        self.addSubview(topView)
        self.addSubview(scrolView)
        
        topView.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(0)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.height.equalTo(120)
        }
        
        scrolView.snp.makeConstraints { (make) in
            make.top.equalTo(topView.snp.bottom).offset(20)
            make.left.equalTo(self).offset(0)
            make.right.equalTo(self).offset(0)
            make.height.equalTo(110)
        }
    }
    
}


