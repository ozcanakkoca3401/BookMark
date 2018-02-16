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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dict = [String : AnyObject]()
        BookmarkSessionManager.sharedInstance.requestPOSTURL("http://", params: dict as! [String : AnyObject], headers: nil, success: { (json) in
            // success code
            print(json)
        }, failure: { (error) in
            //error code
            print(error)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

