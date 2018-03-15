//
//  Styling.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation
import UIKit

enum ColorCode {
    
    case themeBlue
    case themeGray
    case themeClear
    case themeLight
    case themeDarkGray
    case themeDarkBlue
    case themeUltraLightGray
    case black
    case themeMediumGray
    case white
    case stepperGray
    case capacityGray
    case blurGray
    case usageGreen
    case themeViewControllerStartColor
    case themeViewControllerEndColor
    case loginButtonColor
    case textFieldBorderColor
}

enum FontWeight: String {
    case regular
    case light
    case bold
}

class Styling {
    static func colorForCode(_ colorCode: ColorCode) -> UIColor {
        switch colorCode {

        case .themeBlue:
            return UIColor.init(red: 84.0 / 255.0, green: 172.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)
        case .themeGray:
            return UIColor.init(red: 173.0 / 255.0, green: 174.0 / 255.0, blue: 175.0 / 255.0, alpha: 1.0)
        case .themeClear:
            return UIColor.init(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 0.0)
        case .themeLight:
            return UIColor.init(red: 227.0 / 255.0, green: 228.0 / 255.0, blue: 229.0 / 255.0, alpha: 1.0)
        case .themeDarkGray:
            return UIColor.init(red: 143.0 / 255.0, green: 136.0 / 255.0, blue: 135.0 / 255.0, alpha: 1.0)
        case .themeDarkBlue:
            return UIColor.init(red: 58.0 / 255.0, green: 155.0 / 255.0, blue: 252.0 / 255.0, alpha: 1.0)
        case .themeUltraLightGray:
            return UIColor.init(red: 248.0 / 255.0, green: 249.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
        case .black:
            return UIColor.init(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
        case .themeMediumGray:
            return UIColor.init(red: 96.0 / 255.0, green: 97.0 / 255.0, blue: 91.0 / 255.0, alpha: 1.0)
        case .white:
            return UIColor.init(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        case .stepperGray:
            return UIColor.init(red: 186.0 / 255.0, green: 187.0 / 255.0, blue: 188.0 / 255.0, alpha: 1.0)
        case .capacityGray:
            return UIColor.init(red: 101.0 / 255.0, green: 102.0 / 255.0, blue: 103.0 / 255.0, alpha: 1.0)
        case .blurGray:
            return UIColor.init(red: 0 / 255, green: 0 / 255, blue: 0 / 255, alpha: 0.4)
        case .usageGreen:
            return UIColor.init(red: 31.0 / 255.0, green: 202.0 / 255.0, blue: 105.0 / 255.0, alpha: 1.0)
        case .themeViewControllerStartColor:
            return UIColor.init(red: 248.0 / 255.0, green: 166.0 / 255.0, blue: 50.0 / 255.0, alpha: 1.0)
        case .themeViewControllerEndColor:
            return UIColor.init(red: 248.0 / 255.0, green: 225.0 / 255.0, blue: 104.0 / 255.0, alpha: 1.0)
        case .loginButtonColor:
            return UIColor.init(red: 254.0 / 255.0, green: 209.0 / 255.0, blue: 48.0 / 255.0, alpha: 1.0)
        case .textFieldBorderColor:
            return UIColor.init(red: 0.0 / 255.0, green: 188.0 / 255.0, blue: 212.0 / 255.0, alpha: 1.0)
            }
        }
    
    static func font(weight: FontWeight, size: Float) -> UIFont {
        if let font = UIFont.init(name: "Helvetica-\(weight.rawValue.capitalized)", size: CGFloat(size)) {
            return font
        } else {
            return UIFont.systemFont(ofSize: CGFloat(size))
        }
    }
}
