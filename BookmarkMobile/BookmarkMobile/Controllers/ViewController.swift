//
//  ViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 16.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

class ViewController: BaseViewController {

    var memorizationView: MemorizationView = {
        let view = MemorizationView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = RoundButton()
//        button.bor
//        memorizationView.frame = G
        view.addSubview(memorizationView)
        
        let slider = HorizontalSlider(frame: CGRect(x: 40, y: 40, width: 200, height: 20))
        view.addSubview(slider)
        
        let a = StepperButton(frame: CGRect(x: 100, y: 400, width: 75, height: 35))
        view.addSubview(a)
        
        Message.getMessages(success: { (messages) in
            print(messages)
        }) { (error) in
            print(error)
        }
        
        let label  = UILabel(frame:CGRect(x:0, y:280, width:self.view.frame.width, height:20))
        label.text = NSLocalizedString("Deneme", comment: "")
        label.textAlignment = .center
        
        label.font = UIFont(name: "Avenir-Light", size: 15.0)
        label.backgroundColor = .gray
        self.view.addSubview(label)
        
        let myView = RoundView(frame: CGRect(x: 20, y: 100, width: 260, height: 60))
        myView.borderColor = UIColor.gray
        let viewLabel = UILabel(frame: CGRect(x: 70, y: 18, width: 200, height: 20))
        viewLabel.text = "500 MB Shareable Data"
        viewLabel.font = Styling.font(weight: .bold, size: 15)
        viewLabel.textColor = Styling.colorForCode(.themeGray)
        let priceLabel = UILabel(frame: CGRect(x: 45, y: 18, width: 30, height: 20))
        priceLabel.text = "5"
        priceLabel.font = Styling.font(weight: .regular, size: 25)
        priceLabel.textColor = Styling.colorForCode(.themeBlue)
        myView.addSubview(viewLabel)
        myView.addSubview(priceLabel)
        self.view.addSubview(myView)
        
        guard let image = UIImage(named: "EditIcon")?.withRenderingMode(.alwaysTemplate) else
        {
            return
        }
        
        let alignedButton: UIButton = AlignedImageButton(frame: .zero, image: image)
        
        alignedButton.setTitle("Button From Code", for: .normal)
        // Button is Custom by default so need to set its title color for normal/highlighted
        alignedButton.setTitleColor(button.tintColor, for: .normal)
        alignedButton.setTitleColor(button.tintColor.withAlphaComponent(0.3), for: .highlighted)
        // Set font and background color the same as storyboard button
        alignedButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        alignedButton.backgroundColor = UIColor.lightText
        
        self.view.addSubview(alignedButton)
        
        let bilge = UILabel(frame: CGRect(x: 20, y: 400, width: 300, height: 50))
        bilge.text = "BİLGE"
        bilge.textColor = Styling.colorForCode(.themeBlue)
        self.view.addSubview(bilge)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

