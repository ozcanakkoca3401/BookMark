//
//  HeaderView.swift
//  BookmarkMobile
//
//  Created by Özcan AKKOCA on 21.02.2018.
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

import Foundation
import UIKit
import SnapKit

@IBDesignable public class HeaderView: UIView {
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            leftImageView.image = leftImage
        }
    }
    
    @IBInspectable var title: String = "" {
        didSet {
            label.text = title
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            rightImageView.image = rightImage
        }
    }
    
    var leftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.image = UIImage(named: "phone")
        return imageView
    }()
    
    var label: UILabel = {
        let label = UILabel()
        label.text = "514-428-0578"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 8)
        
        return label
    }()
    
    var rightImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.image = UIImage(named: "arrow")
        return imageView
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
    
    func initialize() {
        
        self.addSubview(leftImageView)
        self.addSubview(label)
        self.addSubview(rightImageView)
        
        leftImageView.snp.makeConstraints { (make) in
            make.width.equalTo(25)
            make.height.equalTo(40)
            make.left.equalTo(self).offset(10)
            make.centerY.equalTo(self)
        }
        
        label.snp.makeConstraints { (make) in
            make.width.equalTo(self)
            make.height.equalTo(32)
            make.center.equalTo(self)
        }
        
        rightImageView.snp.makeConstraints { (make) in
            make.width.equalTo(20)
            make.height.equalTo(20)
            make.right.equalTo(self).offset(-10)
            make.centerY.equalTo(self)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
}
