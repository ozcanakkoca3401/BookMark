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

        let slider = HorizontalSlider(frame: CGRect(x: 40, y: 450, width: 200, height: 20))
        view.addSubview(slider)
        
        let a = StepperButton(frame: CGRect(x: 100, y: 400, width: 75, height: 35))
        a.stepperDelegate = self
        view.addSubview(a)
        
        let b = EBLabel(frame: CGRect(x: 20, y: 20, width: 100, height: 40))
        b.EBtitle = "sdfsdfsd"
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
