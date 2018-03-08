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
    
    var popUpView: PopUpView = {
       let popView = PopUpView()
       
        return popView
    }()
    
    var expendHeaderView: ExpendHeaderView = {
       let headerView = ExpendHeaderView()
        
        return headerView
    }()
    
    var headerView: HeaderView = {
        let headerView = HeaderView()
       
        return headerView
    }()
    
    var closeButton: CloseButton = {
        let closeButton = CloseButton(frame: CGRect(x: 50, y: 100, width: 150, height: 50), image: UIImage(named: "close")!)
        
        return closeButton
        
    }()
    
    var topMenuButton: TopMenuButtonView = {
        let topMenuButton = TopMenuButtonView()
        
        return topMenuButton
        
    }()
    
    var loyaltyButton: LoyaltyButtonView = {
        let loyaltyButton = LoyaltyButtonView()
        
        return loyaltyButton
        
    }()
    
    var addAddOnsHeader: AddAddOnsHeaderView = {
       let header = AddAddOnsHeaderView()
        
        return header
    }()
    
//    var stepperView: StepperView = {
//        let stepperView = StepperView()
//
//        return stepperView
//    }()
//
//    var switchStepperView: SwitchStepperView = {
//        let switchStepperView = SwitchStepperView()
//
//        return switchStepperView
//    }()
    
    var stepperComponentview: StepperComponentView = {
       let stepperComponentView = StepperComponentView()
        
        return stepperComponentView
    }()
    
    var usageInformationView: UsageInformationView = {
        let usageInformationView = UsageInformationView()

        return usageInformationView
    }()
    
//    var cell: InformationCellView = {
//       let cell = InformationCellView()
//        
//        return cell
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bilgeView.delegate = self
        topMenuButton.delegate = self
        
        //var headerView: HeaderView = {
        //    let view = HeaderView()
        //    return view
        //}()
        
        /* loadview or viewdidload */
        bilgeView.frame = CGRect(x: 50, y: 200, width: 250, height: 60)
        //view.addSubview(bilgeView)
        
        changeBview.frame = CGRect(x: 50, y: 300, width: 250, height: 60)
        changeBview.backgroundColor = Styling.colorForCode(.themeLight)
       // view.addSubview(changeBview)
        
        threeButtonView.frame = CGRect(x: 50, y: 400, width: 250, height: 60)
        threeButtonView.backgroundColor = Styling.colorForCode(.themeLight)
       // view.addSubview(threeButtonView)
        
        popUpView.frame = CGRect(x: 50, y: 500, width: 250, height: 60)
        //view.addSubview(popUpView)
        
        expendHeaderView.frame = CGRect(x: 50, y: 600, width: 250, height: 60)
        //view.addSubview(expendHeaderView)
        
        headerView.frame = CGRect(x: 50, y: 100, width: 250, height: 60)
        //view.addSubview(headerView)
        
       // view.addSubview(closeButton)
        
       // stepperView.frame = CGRect(x: 50, y: 100, width: 250, height: 60)
       // view.addSubview(stepperView)
        
        //switchStepperView.frame = CGRect(x: 50, y: 200, width: 250, height: 60)
       // view.addSubview(switchStepperView)
        
        stepperComponentview.frame = CGRect(x: 50, y: 100, width: 250, height: 180)
        //view.addSubview(stepperComponentview)
        
        usageInformationView.frame = CGRect(x: 50, y: 100, width: 280, height: 300)
       // view.addSubview(usageInformationView)
        
//        cell.frame = CGRect(x: 50, y: 100, width: 300, height: 60)
//        view.addSubview(cell)
        
        topMenuButton.frame = CGRect(x: 50, y: 150, width: 70, height: 60)
       // view.addSubview(topMenuButton)
        
        loyaltyButton.frame = CGRect(x: 50, y: 150, width: 60, height: 80)
       // view.addSubview(loyaltyButton)
        
        addAddOnsHeader.frame = CGRect(x: 50, y: 150, width: 250, height: 80)
        view.addSubview(addAddOnsHeader)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension BilgeViewController: TouchableProtocol {
  
    func changeBackground() {
       topMenuButton.bgColor = Styling.colorForCode(.themeUltraLightGray)
    }
    
    func didTrigger() {
        print("heyoo")
        bilgeView.layer.borderWidth = 1.4
        bilgeView.borderColor = Styling.colorForCode(.themeBlue)
    }

}
