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

class ViewController: UIViewController, NetworkConnectivityChecking {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // internet kontrolü
        guard isNetworkConnectivityAvailable() else {
            print("internet yok")
            
            return
        }
        
        Message.getMessages(success: { (json) in
            print(json)
        }) { (error) in
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

