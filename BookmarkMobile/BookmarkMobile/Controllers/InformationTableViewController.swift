//
//  InformationTableViewController.swift
//  BookmarkMobile
//
//  Created by bilge.yasa on 6.03.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class InformationTableViewController: UITableViewController {

    var titleArray: [String] = ["name", "birth date", "email address", "password", "security question", "billing address", "shipping address", "payment informations"]
    
    var dataArray: [String] = ["John Doe", "13 NOV 1974", "devprodvl@gmail.com", "*******", " ", "Etiya", "Etiya", "..."]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Auto resizing the height of the cell
//        tableView.estimatedRowHeight = 70.0
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.separatorStyle = .none
        self.title = "Apple Products"
    }
    
}

extension InformationTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    // Cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: InformationTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? InformationTableViewCell ??
            InformationTableViewCell(style: .default, reuseIdentifier: "cell")
        
        let cellView = cell.contentView as? InformationCellView
        
        cellView?.nameLabel.text = titleArray[indexPath.row]
        cellView?.secondNameLabel.text = dataArray[indexPath.row]
        
        //        let item: Item = sections[indexPath.section].items[indexPath.row]
        
        //        cell.nameLabel.text = item.name
        //        cell.detailLabel.text = item.detail
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    // Header
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? CollapsibleTableViewHeader ?? CollapsibleTableViewHeader(reuseIdentifier: "header")
//
//        //        header.titleLabel.text = sections[section].name
//        //        header.arrowLabel.text = ">"
//        header.setCollapsed(sections[section].collapsed)
//
//        header.section = section
//        header.delegate = self
//
//        return header
//    }
//
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 80.0
//    }
//
//    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 1.0
//    }
    
}

//
// MARK: - Section Header Delegate
//
//extension UmutViewController: CollapsibleTableViewHeaderDelegate {
//
//    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int) {
//        let collapsed = !sections[section].collapsed
//
//        // Toggle collapse
//        sections[section].collapsed = collapsed
//        header.setCollapsed(collapsed)
//
//        tableView.reloadSections(NSIndexSet(index: section) as IndexSet, with: .automatic)
//    }
