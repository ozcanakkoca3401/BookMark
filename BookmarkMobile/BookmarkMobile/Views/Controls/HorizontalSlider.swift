//
//  CustomHorizontalSlider.swift
//  BookmarkMobile
//
//  Created by Umut on 19.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class HorizontalSlider: UISlider {

    @IBInspectable var minTintColor: UIColor = Styling.colorForCode(.themeGray) {
        didSet{
            minimumTrackTintColor = minTintColor
        }
    }
    
    @IBInspectable var maxTintColor: UIColor = Styling.colorForCode(.themeLight) {
        didSet{
            maximumTrackTintColor = maxTintColor
        }
    }
    
    @IBInspectable var minValue: Float = 0 {
        didSet{
            minimumValue = minValue
        }
    }
    
    @IBInspectable var maxValue: Float = 1 {
        didSet{
            maximumValue = maxValue
        }
    }
    
    @IBInspectable var initialvalue: Float = 0.5 {
        didSet{
            value = initialvalue
        }
    }
    
    //    @IBInspectable var minTrackImage: UIImage = UIImage(named: "")! {
    //        didSet{
    //            self.setMinimumTrackImage(minTrackImage, for: .normal)
    //        }
    //    }
    //
    //    @IBInspectable var maxTrackImage: UIImage = UIImage(named: "")! {
    //        didSet{
    //            self.setMaximumTrackImage(maxTrackImage, for: .normal)
    //        }
    //    }
    
    public init() {
        super.init(frame: .zero)
        self.initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initialize(){
        thumbTintColor = Styling.colorForCode(.themeClear)
        isUserInteractionEnabled = false
        minimumTrackTintColor = minTintColor
        maximumTrackTintColor = maxTintColor
        minimumValue = minValue
        maximumValue = maxValue
        value = initialvalue
        //        self.setMinimumTrackImage(minTrackImage, for: .normal)
        //        self.setMaximumTrackImage(maxTrackImage, for: .normal)
    }
}
