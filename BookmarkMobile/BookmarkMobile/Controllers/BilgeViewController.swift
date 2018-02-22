//
//  BilgeViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class BilgeViewController: UIViewController {
    var bilgeView: AddOnsButton = {
        let view = AddOnsButton()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //var headerView: HeaderView = {
        //    let view = HeaderView()
        //    return view
        //}()
        
        /* loadview or viewdidload */
        bilgeView.frame = CGRect(x: 150, y: 200, width: 150, height: 50)
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
