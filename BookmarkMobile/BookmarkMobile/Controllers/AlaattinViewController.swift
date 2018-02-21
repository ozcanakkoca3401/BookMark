//
//  AlaattinViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

//import UIKit
//
//class AlaattinViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}

import UIKit

class AlaattinViewController: UIViewController {
    
    var myView:UIView!
    var myView2:UIView!
    var myView3:UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(myFunc))
        
        myView = UIView(frame: CGRect(x: 30, y: 30, width: 300, height: 100))
        myView.isUserInteractionEnabled = true
        myView.layer.borderColor = UIColor.darkGray.cgColor
        myView.layer.borderWidth = 2
        myView.layer.cornerRadius = 5
        myView.clipsToBounds = true
        myView.addGestureRecognizer(recognizer)
        view.addSubview(myView)
        
        
        myView2 = UIView(frame: CGRect(x: 0, y: 100, width: 300, height: 50))
        myView2.backgroundColor = UIColor.darkGray
        myView2.isHidden = true
        myView.addSubview(myView2)
        
        myView3 = UIView(frame: CGRect(x: 0, y: 170, width: 300, height: 50))
        myView3.backgroundColor = UIColor.darkGray
        myView3.isHidden = true
        myView.addSubview(myView3)
    }
    
    @objc func myFunc(){
        
        if (self.myView.frame.size.height == 100) {
            
            UIView.animate(withDuration: 0.3, animations: {
                
                self.myView.frame.size.height = 240
                
                UIView.transition(with: self.myView2, duration: 0.3, options: .transitionCrossDissolve, animations: {
                    self.myView2.isHidden = false
                })
                
                UIView.transition(with: self.myView3, duration: 0.3, options: .transitionCrossDissolve, animations: {
                    self.myView3.isHidden = false
                })
                
            }) { (finished) in
                //Animation bittiğinde istenilen yazılacak
            }
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                
                self.myView.frame.size.height = 100
                
                UIView.transition(with: self.myView2, duration: 0.3, options: .transitionCrossDissolve, animations: {
                    self.myView2.isHidden = true
                })
                UIView.transition(with: self.myView3, duration: 0.3, options: .transitionCrossDissolve, animations: {
                    self.myView3.isHidden = true
                })
            }) { (finished) in
                //Animation bittiğinde istenilen yazılacak
                //                UIView.animate(withDuration: 1, animations: {
                ////                    self.myView.transform = CGAffineTransform.identity
                //                })
            }
        }
    }
}




