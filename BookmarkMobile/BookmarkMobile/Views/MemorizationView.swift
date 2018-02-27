//
//  MemorizationView.swift
//  SpeakToMe
//
//  Created by Özcan AKKOCA on 27.01.2018.
//  Copyright © 2018 Henry Mason. All rights reserved.
//

//let memorizationView = MemorizationView()
//memorizationView.frame = view.frame
//view.addSubview(memorizationView)

import UIKit
import SnapKit

class MemorizationView: UIView {

    var keyLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "keylabel"
        label.textAlignment = .center
        return label
    }()
    
    var valueLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "valueLabel"
        label.textAlignment = .center
        return label
    }()
    
    var speechTextLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = "speechTextLabel"
        label.textAlignment = .center
        return label
    }()
    
    var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }()
    
    var miniSoundButton: RoundButton = {
        let button = RoundButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.tintColor = .blue
        button.backgroundColor = .red
        button.tag = 100
//        button.addTarget(self, action:#selector(ViewController.readWriteSpellAction), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    var readWriteSpellButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Listen", for: .normal)
        button.tintColor = .blue
        button.backgroundColor = .red
        button.tag = 100
//        button.addTarget(self, action:#selector(ViewController.readWriteSpellAction), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addBehavior()
        self.backgroundColor = .orange
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func addBehavior() {
        print("Add all the behavior here")
        // configure and add textField as subview

        addSubview(imageView)
        addSubview(miniSoundButton)
        addSubview(keyLabel)
        addSubview(lineView)
        addSubview(valueLabel)
        addSubview(speechTextLabel)
        addSubview(readWriteSpellButton)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(25)
            make.left.equalTo(self).offset(25)
            make.right.equalTo(self).offset(-25)
            make.height.equalTo(self).dividedBy(3)
        }
        
        miniSoundButton.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(50)
            make.bottom.equalTo(imageView).offset(-25)
            make.right.equalTo(imageView).offset(-25)
        }
        
        keyLabel.snp.makeConstraints { (make) in
            make.width.equalTo(140)
            make.height.equalTo(20)
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).offset(-25)
        }
        
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(140)
            make.height.equalTo(5)
            make.center.equalTo(self)
        }
        
        valueLabel.snp.makeConstraints { (make) in
            make.width.equalTo(140)
            make.height.equalTo(20)
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).offset(25)
        }
        
        speechTextLabel.snp.makeConstraints { (make) in
            make.width.equalTo(140)
            make.height.equalTo(20)
            make.centerX.equalTo(self)
            make.centerY.equalTo(self).offset(75)
        }

        readWriteSpellButton.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalTo(self)
            make.bottom.equalTo(self).offset(-25)
        }
    
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
