//
//  UmutViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class UmutViewController: UITableViewController {
    
    var sections = sectionsData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Auto resizing the height of the cell
        tableView.estimatedRowHeight = 70.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
        self.title = "Apple Products"
    }
    
}

extension UmutViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].collapsed ? 0 : sections[section].items.count
    }
    
    // Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellView = ThreeButtonView()
//        let cell: BaseTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell1") as? BaseTableViewCell ??
//            BaseTableViewCell(style: .default, reuseIdentifier: "cell1")

        let cell = BaseTableViewCell()
        cell.configure(view: cellView)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    // Header
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? CollapsibleTableViewHeader ?? CollapsibleTableViewHeader(reuseIdentifier: "header")
        
        header.headerView.dataLabel.EBtext = sections[section].name
//        header.titleLabel.text = sections[section].name
//        header.arrowLabel.text = ">"
        header.setCollapsed(sections[section].collapsed)
        
        header.section = section
        header.delegate = self
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80.0
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
    
}

extension UmutViewController: CollapsibleTableViewHeaderDelegate {
    
    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int) {
        let collapsed = !sections[section].collapsed
        
        // Toggle collapse
        sections[section].collapsed = collapsed
        header.setCollapsed(collapsed)
        
        tableView.reloadSections(NSIndexSet(index: section) as IndexSet, with: .automatic)
    }
    
}
