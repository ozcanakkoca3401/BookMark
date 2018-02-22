//
//  UmutViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class UmutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let a = StepperButton(frame: CGRect(x: 100, y: 400, width: 75, height: 35))
//        a.stepperDelegate = self
//        view.addSubview(a)
        
//        let r = RoundButton(frame: CGRect(x: 60, y: 60, width: 50, height: 50))
//        r.backgroundColor = UIColor.red
//        view.addSubview(r)
        
        let b = EBLabel(frame: CGRect(x: 20, y: 20, width: 100, height: 40))
        b.EBtext = "sdfsdfsd"
        self.view.addSubview(b)
        
        let f = RoundView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        view.addSubview(f)

        
        let g = EBView(frame: CGRect(x: 50, y: 300, width: 250, height: 100))
        g.layer.borderColor = UIColor.lightGray.cgColor
        g.layer.borderWidth = 1
        view.addSubview(g)
        
        let slider = HorizontalSlider(frame: CGRect(x: 10, y: 80, width: 200, height: 20))
        g.addSubview(slider)
        
        let ad3 = EBLabel(frame: CGRect(x: 10, y: 10, width: 150, height: 25))
        ad3.EBtext = "Deneme"
        ad3.EBcolor = UIColor.blue
        g.addSubview(ad3)
        
        let ad = EBLabel(frame: CGRect(x: 10, y: 45, width: 150, height: 25))
        ad.EBtext = "Deneme"
        ad.EBcolor = UIColor.blue
        g.addSubview(ad)
        
        let ad2 = EBLabel(frame: CGRect(x: 150, y: 45, width: 150, height: 25))
        ad2.EBtext = "Deneme"
        ad2.EBcolor = UIColor.blue
        g.addSubview(ad2)
        
        let touchableViewLabel2 = EBLabel(frame: CGRect(x: 70, y: 18, width: 200, height: 20))
        touchableViewLabel2.EBtext = NSLocalizedString("Bilge", comment: "")
        view.addSubview(touchableViewLabel2)
//        touchableViewLabel2.EBfont = Styling.font(weight: .bold, size: 15)
//        touchableViewLabel2.textColor = Styling.colorForCode(.themeGray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UmutViewController: StepperProtocol {
    func minus() {
        print("minus")
    }
    
    func plus() {
        print("plus")
    }
    
    
}
