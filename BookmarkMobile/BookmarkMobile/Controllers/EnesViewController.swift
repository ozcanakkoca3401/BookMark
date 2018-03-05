//
//  EnesViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class EnesViewController: UIViewController, CustomPopupProtocol {

    let a = CustomPopup()
    
    @IBAction func buttona(_ sender: Any) {
        a.frame = view.frame
        a.twoButtonDelegate = self
        view.addSubview(a)
    }
    
    @IBAction func PageViewButton(_ sender: Any) {
        
        let modalVC = PageVC()
        modalVC.modalPresentationStyle = .overCurrentContext
        present(modalVC, animated: true, completion: nil)
    }
    
    func cancelButton() {
         a.removeFromSuperview()
    }
    
    func confirmButton() {
        print("confirm")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var a = MainScrollView(frame: CGRect(x: 10, y: 80, width: 290, height: 130))
        a.backgroundColor = UIColor.red
        view.addSubview(a)
        
//        view.backgroundColor = UIColor.red
        
    }

}
