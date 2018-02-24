//
//  UmutViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

//import UIKit
//
//class UmutViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let t = EBHeaderView(frame: CGRect(x: 10, y: 60, width: 350, height: 80))
//        view.addSubview(t)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    /*
//     // MARK: - Navigation
//
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destinationViewController.
//     // Pass the selected object to the new view controller.
//     }
//     */
//
//}

import UIKit

class UmutViewController:  UIViewController, UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var sections = [
        SectionData(dataType: "DATA",
                    usedData: "0.45",
                    usableData: "11 GB",
                expanded: false),
        SectionData(dataType: "SMS",
                    usedData: "120",
                    usableData: "500 SMS",
                    expanded: false),
        SectionData(dataType: "VOICE",
                    usedData: "50",
                    usableData: "1000 VOICE",
                    expanded: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        view.backgroundColor = Styling.colorForCode(.themeLight)
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded) {
            return 60
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeaderView()
        header.customInit(title: sections[section], section: section, delegate: self)
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()//tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        let cellD = ThreeButtonView(frame: CGRect(x: 0, y: 10, width: 360, height: 40))
//        cell.textLabel?.text = sections[indexPath.section].movies[indexPath.row]
        cell.backgroundColor = Styling.colorForCode(.themeLight)
        cell.addSubview(cellD)
        return cell
    }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        tableView.beginUpdates()
//        for i in 0 ..< sections[section].movies.count {
//            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
//        }
        tableView.endUpdates()
    }
}

extension ExpandableHeaderView {
    func customInit(title: SectionData, section: Int, delegate: ExpandableHeaderViewDelegate) {
        
        let t = EBHeaderView(frame: CGRect(x: 0, y: 0, width: 380, height: 80))
        t.dataLabel.EBtext = title.dataType
        t.usableLabel.EBtext = title.usableData
        t.usageLabel.EBtext = title.usedData
        t.gbLabel.text = title.dataType
        
        self.addSubview(t)
        self.section = section
        self.delegate = delegate
    }
}



