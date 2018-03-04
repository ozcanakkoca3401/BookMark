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
//        a.transform = CGAffineTransform(scaleX: 0, y: 0)
        view.addSubview(a)
//        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: .curveEaseIn, animations: {
//            a.transform = CGAffineTransform.identity
//        })
        
//        var animationView: UIView = UIView(frame: CGRect(x:50,y: 90,width: 100,height: 50))
//        animationView.backgroundColor = UIColor.black
//        animationView.transform = CGAffineTransform(scaleX: 0, y: 0)
//        view.addSubview(animationView)
//        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: .curveEaseIn, animations: {
//            animationView.transform = CGAffineTransform.identity
//        })
        
    }
    
    @IBAction func PageViewButton(_ sender: Any) {
        
        let modalVC = PageVC()
        //        modalVC.view.backgroundColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
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
