//
//  CollapsibleTableViewHeader.swift
//  ios-swift-collapsible-table-section
//
//  Created by Yong Su on 5/30/16.
//  Copyright © 2016 Yong Su. All rights reserved.
//

import UIKit

protocol CollapsibleTableViewHeaderDelegate: class {
    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int)
}

class CollapsibleTableViewHeader: UITableViewHeaderFooterView {
    
    weak var delegate: CollapsibleTableViewHeaderDelegate?
    var section: Int = 0
    
    let headerView = EBHeaderView()
    let bottomCell = EBCellView()
//    let seperatorView = EBView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tapHeader(_ gestureRecognizer: UITapGestureRecognizer) {
        guard let cell = gestureRecognizer.view as? CollapsibleTableViewHeader else {
            return
        }
        delegate?.toggleSection(self, section: cell.section)
    }
    
    func setCollapsed(_ collapsed: Bool) {
//         Animate the arrow rotation (see Extensions.swf)
        headerView.rightImageView.rotate(collapsed ? 0.0 : .pi / 2)
    }
    
    func configure() {
        
//        seperatorView.backgroundColor = Styling.colorForCode(.white)
        
        if section != 3 {
            contentView.addSubview(headerView)
//            contentView.addSubview(seperatorView)
            
            headerView.snp.makeConstraints { (make) in
                make.top.bottom.left.right.equalTo(self)
            }
//            seperatorView.snp.makeConstraints { (make) in
//                make.top.equalTo(headerView.snp.bottom)
//                make.height.equalTo(5)
//                make.width.equalTo(self)
//            }
            addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(CollapsibleTableViewHeader.tapHeader(_:))))
            
        } else {
            
            contentView.addSubview(bottomCell)
            
            bottomCell.snp.makeConstraints { (make) in
                make.top.bottom.left.right.equalTo(self)
            }
        }
    }
    
}
