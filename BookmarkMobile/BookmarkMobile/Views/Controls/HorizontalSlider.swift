//
//  CustomHorizontalSlider.swift
//  BookmarkMobile
//
//  Created by Umut on 19.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

@IBDesignable public class HorizontalSlider: UISlider {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        thumbTintColor = UIColor.clear
        isUserInteractionEnabled = false
        minimumTrackTintColor = minTintColor
        maximumTrackTintColor = maxTintColor
        minimumValue = minValue
        maximumValue = maxValue
        value = initialvalue
        self.setMinimumTrackImage(minTrackImage, for: .normal)
        self.setMaximumTrackImage(maxTrackImage, for: .normal)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable var minTintColor: UIColor = UIColor.darkGray {
        didSet{
            minimumTrackTintColor = minTintColor
        }
    }
    
    @IBInspectable var maxTintColor: UIColor = UIColor.lightGray {
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
    
    @IBInspectable var minTrackImage: UIImage = UIImage(named: "")! {
        didSet{
            self.setMinimumTrackImage(minTrackImage, for: .normal)
        }
    }
    
    @IBInspectable var maxTrackImage: UIImage = UIImage(named: "")! {
        didSet{
            self.setMaximumTrackImage(maxTrackImage, for: .normal)
        }
    }
}
