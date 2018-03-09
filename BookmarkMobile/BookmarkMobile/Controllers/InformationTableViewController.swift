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
        
        let cellView = InformationCellView()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? BaseTableViewCell ??
            BaseTableViewCell(style: .default, reuseIdentifier: "cell")
        
        cell.configure(view: cellView)
        cellView.nameLabel.EBtext = titleArray[indexPath.row]
        cellView.secondNameLabel.EBtext = dataArray[indexPath.row]

        //        let item: Item = sections[indexPath.section].items[indexPath.row]
        
        //        cell.nameLabel.text = item.name
        //        cell.detailLabel.text = item.detail
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}
