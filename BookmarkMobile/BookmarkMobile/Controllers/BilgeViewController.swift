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
