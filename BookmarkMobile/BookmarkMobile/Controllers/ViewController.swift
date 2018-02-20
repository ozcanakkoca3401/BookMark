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
        
        let slider = HorizontalSlider(frame: CGRect(x: 40, y: 450, width: 200, height: 20))
        view.addSubview(slider)
        
        let a = StepperButton(frame: CGRect(x: 100, y: 400, width: 75, height: 35))
        a.stepperDelegate = self
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
        let changeButton = RoundButton(frame: CGRect(x: 200, y: 0, width: 60, height: myView.bounds.height))
        changeButton.backgroundColor = Styling.colorForCode(.themeBlue)
        changeButton.cornerRadius = 5
        changeButton.borderColor = Styling.colorForCode(.themeBlue)
        myView.addSubview(changeButton)
        self.view.addSubview(myView)
        
        let touchableView = RoundView(frame: CGRect(x: 20, y: 200, width: 260, height: 60))
        touchableView.borderColor = UIColor.gray
        let touchableViewLabel = UILabel(frame: CGRect(x: 70, y: 18, width: 200, height: 20))
        touchableViewLabel.text = "500 MB Shareable Data"
        touchableViewLabel.font = Styling.font(weight: .bold, size: 15)
        touchableViewLabel.textColor = Styling.colorForCode(.themeGray)
        let touchableViewPriceLabel = UILabel(frame: CGRect(x: 45, y: 18, width: 30, height: 20))
        touchableViewPriceLabel.text = "5"
        touchableViewPriceLabel.font = Styling.font(weight: .regular, size: 25)
        touchableViewPriceLabel.textColor = Styling.colorForCode(.themeBlue)
        touchableView.delegate = self
        touchableView.addSubview(touchableViewLabel)
        touchableView.addSubview(touchableViewPriceLabel)
        self.view.addSubview(touchableView)
        
       
      
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
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: StepperProtocol {
    func minus() {
        print("minus")
    }
    
    func plus() {
        print("plus")
    }
    
    
}
extension ViewController: TouchableProtocol {
    func didTrigger() {
        print("bilge")
    }
    
    
}
