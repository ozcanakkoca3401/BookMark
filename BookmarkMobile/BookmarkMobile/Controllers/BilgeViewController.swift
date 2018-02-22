//
//  BilgeViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class BilgeViewController: UIViewController {
    var bilgeView: AddOnsButtonView = {
        let view = AddOnsButtonView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //var headerView: HeaderView = {
        //    let view = HeaderView()
        //    return view
        //}()
        
        /* loadview or viewdidload */
        bilgeView.frame = CGRect(x: 50, y: 200, width: 250, height: 50)
        view.addSubview(bilgeView)
        

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
