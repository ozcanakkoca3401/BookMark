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
        }
    }
    
    static func font(weight: FontWeight, size: Float) -> UIFont {
        if let font = UIFont.init(name: "Helvetica-\(weight.rawValue.capitalized)", size: CGFloat(size)) {
            return font
        }
        else {
            return UIFont.systemFont(ofSize: CGFloat(size))
        }
    }
}


