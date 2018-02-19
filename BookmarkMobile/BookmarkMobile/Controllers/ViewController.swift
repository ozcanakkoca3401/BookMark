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

class ViewController: BaseViewController {

    var memorizationView: MemorizationView = {
        let view = MemorizationView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = RoundButton()
//        button.bor
//        memorizationView.frame = G
        view.addSubview(memorizationView)
        
        Message.getMessages(success: { (messages) in
            print(messages)
        }) { (error) in
            print(error)
        }
        
        let label  = UILabel(frame:CGRect(x:0, y:280, width:self.view.frame.width, height:20))
        label.text = NSLocalizedString("Deneme", comment: "")
        label.textAlignment = .center
        
        label.font = UIFont(name: "Avenir-Light", size: 15.0)
        label.backgroundColor = .gray
        self.view.addSubview(label)
        
        let myView = RoundView(frame: CGRect(x: 20, y: 100, width: 300, height: 100))
        myView.borderColor = UIColor.purple
        self.view.addSubview(myView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

