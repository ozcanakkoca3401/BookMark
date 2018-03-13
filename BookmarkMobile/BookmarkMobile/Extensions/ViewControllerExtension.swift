//
//  ViewControllerExtension.swift
//  BookmarkMobile
//
//  Created by Umut on 13.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setGradientLayer() {
       
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [Styling.colorForCode(.themeViewControllerStartColor).cgColor, Styling.colorForCode(.themeViewControllerEndColor).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.addSublayer(gradientLayer)
    }
    
}
