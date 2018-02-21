//
//  BilgeViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class BilgeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // ChangeButton + view component...
        let myView = RoundView(frame: CGRect(x: 20, y: 100, width: 260, height: 60))
        myView.borderColor = UIColor.gray
        myView.backgroundColor = Styling.colorForCode(.themeLight)
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
        changeButton.setTitle("Change", for: .normal)
        changeButton.titleLabel?.font = Styling.font(weight: .regular, size: 13)
        changeButton.backgroundColor = Styling.colorForCode(.themeBlue)
        changeButton.cornerRadius = 5
        changeButton.borderColor = Styling.colorForCode(.themeBlue)
        myView.addSubview(changeButton)
        self.view.addSubview(myView)
        
        //TouchableView component...
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension BilgeViewController: TouchableProtocol {
    func didTrigger() {
        print("bilge")
    }
    
    
}
