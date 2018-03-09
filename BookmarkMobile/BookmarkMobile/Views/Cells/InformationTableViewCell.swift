//
//  InformationTableViewCell.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class InformationTableViewCell: UITableViewCell {

    let cellView = InformationCellView(frame: CGRect(x: 0, y: 0, width: 380, height: 80))
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
//        cellView.frame = self.frame
        print("Frame", self.frame)
        contentView.addSubview(cellView)
   
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
