//
//  BaseViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 16.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import SVProgressHUD

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        self.view.isUserInteractionEnabled = true
     
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    func baseTextFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.shadowColor = Styling.colorForCode(.textFieldBorderColor).cgColor
    }
    
    func baseTextFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.shadowColor = Styling.colorForCode(.black).cgColor
    }
    
    func baseCheckBoxButtnoClicked(isCheckBoxClicked: Bool, checkBox: RoundButton) -> Bool {
        if !isCheckBoxClicked {
            checkBox.bgColor = Styling.colorForCode(.textFieldBorderColor)
            checkBox.setImage(UIImage(named: "check"), for: .normal)
            checkBox.borderColor = Styling.colorForCode(.textFieldBorderColor)
            return true
        } else {
            checkBox.bgColor = Styling.colorForCode(.white)
            checkBox.setImage(UIImage(named: ""), for: .normal)
            checkBox.borderColor = Styling.colorForCode(.themeMediumGray)
            return false
        }
    }
    
}
