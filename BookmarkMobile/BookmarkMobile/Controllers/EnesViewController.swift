//
//  EnesViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class EnesViewController: UIViewController, MainScrollViewProtocol, CustomPopupProtocol {
    func buttonClicked(_ sender: UITapGestureRecognizer) {
        
        sender.view?.backgroundColor = Styling.colorForCode(.themeDarkGray)
        
//        if sender.view?.tag == 0 {
//
//            let view1 = UIView(frame: CGRect(x: 0, y: 240, width: self.view.frame.size.width, height: self.view.frame.size.height - 120))
//            view1.backgroundColor = Styling.colorForCode(.themeUltraLightGray)
//            self.view.addSubview(view1)
//
//            let modalVC = EBUsageInfoPageView()
//            modalVC.orderedViewControllers = [UsageInfoViewController(), UsageInfoViewController(), UsageInfoViewController(), UsageInfoViewController()]
//            self.addChildViewController(modalVC)
//            view1.addSubview(modalVC.view)
//            modalVC.didMove(toParentViewController: self)
//
//        }
    }
    
    //CustomPopupProtocol

    let a = CustomPopup()

    @IBAction func buttona(_ sender: Any) {
        a.frame = view.frame
        a.twoButtonDelegate = self
        view.addSubview(a)
    }
//
    @IBAction func PageViewButton(_ sender: Any) {

        let modalVC = EBPageViewController()
        modalVC.orderedViewControllers = [GreenViewController(), BlueViewController(), BlueViewController(), BlueViewController()]
        modalVC.modalPresentationStyle = .overCurrentContext
        present(modalVC, animated: true, completion: nil)

//        let modalVC = EBUsageInfoPageView()
//        modalVC.orderedViewControllers = [UsageInfoViewController()]
//        modalVC.modalPresentationStyle = .overCurrentContext
//        present(modalVC, animated: true, completion: nil)
//
    }
//
    func cancelButton() {
         a.removeFromSuperview()
    }

    func confirmButton() {
        print("confirm")
    }

    var stepperComponentview: StepperComponentView = {
        let stepperComponentView = StepperComponentView()
        
        return stepperComponentView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepperComponentview.frame = CGRect(x: 50, y: 250, width: 250, height: 180)
        stepperComponentview.stepperView.increaseAmount = 2
        stepperComponentview.secondStepperView.increaseAmount = 200
        view.addSubview(stepperComponentview)

//        let f = LoyaltyScrollView(frame: CGRect(x: 0, y: 300, width: self.view.frame.size.width, height: 130))
//        f.backgroundColor = Styling.colorForCode(.themeUltraLightGray)
//        view.addSubview(f)
        
//        let g = EBMainLoyaltyView(frame: CGRect(x: 20, y: 250, width: 330, height: 390))
////        g.backgroundColor = Styling.colorForCode(.themeBlue)
//        view.addSubview(g)
        
        let f = MainScrollView(frame: CGRect(x: 0, y: 70, width: self.view.frame.size.width, height: 80))
        f.backgroundColor = Styling.colorForCode(.themeDarkGray)
        f.mainScrollViewDelegate = self
        view.addSubview(f)

//        let a = EBTopLoyaltyView(frame: CGRect(x: 30, y: 300, width: 320, height: 140))
//        view.addSubview(a)
        
//        let view1 = UIView(frame: CGRect(x: 0, y: 220, width: self.view.frame.size.width, height: self.view.frame.size.height - 120))
//        self.view.addSubview(view1)
//
//        let modalVC = EBUsageInfoPageView()
//        modalVC.orderedViewControllers = [UsageInfoViewController(), UsageInfoViewController(), UsageInfoViewController(), UsageInfoViewController()]
//        self.addChildViewController(modalVC)
//        view1.addSubview(modalVC.view)
//        modalVC.didMove(toParentViewController: self)
        
        //        modalVC.orderedViewControllers = [GreenViewController(), BlueViewController()]
        //        modalVC.modalPresentationStyle = .overCurrentContext
        //        present(modalVC, animated: true, completion: nil)

//        var a = MainScrollView(frame: CGRect(x: 10, y: 80, width: 290, height: 130))
//        a.backgroundColor = UIColor.red
//        view.addSubview(a)
        
//        let a = EBLevelKnowledge(frame: CGRect(x: 20, y: 250, width: 320, height: 300))
//        view.addSubview(a)
//        view.backgroundColor = Styling.colorForCode(.themeGray)
//        view.backgroundColor = UIColor.red
        
//        let a = AlignedImageButton(frame: CGRect.init(x: 40, y: 260, width: 220, height: 60), image: UIImage(named: "right-arrow")!)
//        a.backgroundColor = UIColor.red
//        a.setTitle("SEE USAGE", for: .normal)
//        a.setTitleColor(UIColor.brown, for: .normal)
//        view.addSubview(a)
        
//        let c = FooterView(frame: CGRect(x: 40, y: 260, width: 300, height: 155))
//        view.addSubview(c)
        
    }

}
