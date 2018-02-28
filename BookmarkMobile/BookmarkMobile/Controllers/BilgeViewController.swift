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
    
    var changeBview: ChangeButtonView = {
        let cView = ChangeButtonView()
        return cView
    }()
    
    var threeButtonView: ThreeButtonView = {
        let tbView = ThreeButtonView()
        return tbView
    }()
    
    var popUpView : PopUpView = {
       let popView = PopUpView()
        return popView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bilgeView.delegate = self
        
        //var headerView: HeaderView = {
        //    let view = HeaderView()
        //    return view
        //}()
        
        /* loadview or viewdidload */
        bilgeView.frame = CGRect(x: 50, y: 200, width: 250, height: 60)
        view.addSubview(bilgeView)
        
        changeBview.frame = CGRect(x: 50, y: 300, width: 250, height: 60)
        changeBview.backgroundColor = Styling.colorForCode(.themeLight)
        view.addSubview(changeBview)
        
        threeButtonView.frame = CGRect(x: 50, y: 400, width: 250, height: 60)
        threeButtonView.backgroundColor = Styling.colorForCode(.themeLight)
        view.addSubview(threeButtonView)
        
        popUpView.frame = CGRect(x: 50, y: 500, width: 250, height: 60)
        view.addSubview(popUpView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension BilgeViewController: TouchableProtocol {
    func didTrigger() {
        print("heyoo")
        bilgeView.layer.borderWidth = 1.4
        bilgeView.borderColor = Styling.colorForCode(.themeBlue)
    }

}

