//
//  AddOnsTableViewHeader.swift
//  BookmarkMobile
//
//  Created by Umut on 11.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

protocol AddOnsTableViewHeaderDelegate: class {
    func toggleSection(_ header: AddOnsTableViewHeader, section: Int)
}

class AddOnsTableViewHeader: UITableViewHeaderFooterView {
    
    weak var delegate: AddOnsTableViewHeaderDelegate?
    var section: Int = 0
    
    let headerView = AddAddOnsHeaderView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(headerView)
        
        headerView.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalTo(self)
        }
        
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(AddOnsTableViewHeader.tapHeader(_:))))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapHeader(_ gestureRecognizer: UITapGestureRecognizer) {
        guard let cell = gestureRecognizer.view as? AddOnsTableViewHeader else {
            return
        }
        delegate?.toggleSection(self, section: cell.section)
    }
    
    func setCollapsed(_ collapsed: Bool) {
        //         Animate the arrow rotation (see Extensions.swf)
        headerView.rightImageView.rotate(collapsed ? 0.0 : .pi / 2)
    }
    
}

