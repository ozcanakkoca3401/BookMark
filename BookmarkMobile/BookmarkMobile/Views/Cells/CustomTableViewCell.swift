//
//  CustomTableViewCell.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 21.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {

    let customImageView = UIImageView()
    let customTextLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        customTextLabel.numberOfLines = 0
        
        contentView.addSubview(customTextLabel)
        contentView.addSubview(customImageView)
        
        customImageView.snp.makeConstraints { (make) in
            make.width.equalTo(80)
            make.height.equalTo(80)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.left.equalTo(contentView.snp.left).offset(10)
        }
        
        customTextLabel.snp.makeConstraints { (make) in
            make.left.equalTo(customImageView.snp.right).offset(10)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.bottom.equalTo(contentView.snp.bottom)
            make.right.equalTo(contentView.snp.right).offset(-10)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
