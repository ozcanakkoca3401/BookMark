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
    var sumWidth = 0
    
    var scrollButton: RoundButton = {
        let button = RoundButton()
        button.title = "Deneme"
        button.titleLabel?.textColor = UIColor.white
        button.bgColor = Styling.colorForCode(.themeDarkBlue)
        button.titleLabel?.font = Styling.font(weight: .bold, size: 14)
//        button.addTarget(self, action: #selector(ThreeButtonView.addOnButtonF), for: .touchUpInside)
        
        return button
    }()
  
    public override init() {
        super.init(frame: .zero)
        //self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        //self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //self.initialize()
    }
    
    override func initialize() {
        
        for var i in 0..<4 {print("deede")}
        
        for var i in 0..<4 {
            //            let view = UIView(frame: CGRect(x: 10 + sumWidth, y: 10, width: 60, height: 60))
            //            view.backgroundColor = UIColor.gray
            //            landSpaceContentView.addSubview(view)
            //
            //            sumWidth = 10 + sumWidth + 60
            scrollButton.frame = CGRect(x: 10 + sumWidth, y: 10, width: 60, height: 60)
            self.addSubview(scrollButton)
//            let button = UIButton(frame: CGRect(x: 10 + sumWidth, y: 10, width: 60, height: 60))
//            button.backgroundColor = UIColor.white
//            landSpaceContentView.addSubview(button)
//            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
            
            sumWidth = 10 + sumWidth + 60
            
        }
      
    }
}
