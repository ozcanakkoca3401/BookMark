//
//  TextfieldExtension.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

extension EBTextfield {
    
    func setBottomBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
    func setLeftViewImage(imageName: String) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
//        paddingView.backgroundColor = UIColor.red
        paddingView.addSubview(createImageView(imageName: imageName))
        self.leftView = paddingView
    }
    
    func setRightViewImage(imageName: String) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        paddingView.backgroundColor = UIColor.red
        paddingView.addSubview(createImageView(imageName: imageName))
        self.rightView = paddingView
    }
    
    func createImageView(imageName: String) -> UIImageView {
        let myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let myImage = UIImage(named: imageName)
//        myImageView.backgroundColor = UIColor.cyan
        myImageView.contentMode = .scaleAspectFit
        myImageView.image = myImage
        
        return myImageView
    }
    
}
