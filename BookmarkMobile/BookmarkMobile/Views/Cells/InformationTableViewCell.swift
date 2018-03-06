//
//  InformationTableViewCell.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class InformationTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let cellView = InformationCellView()
        
        cellView.frame = self.frame
        print("Frame", self.frame)
        contentView.addSubview(cellView)
   
    }
        
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
