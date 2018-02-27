//
//  OzcanViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class OzcanViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var sections = [
        Section(genre: "🦁 Animation",
                movies: ["The Lion King", "The Incredibles"],
                expanded: false),
        Section(genre: "💥 Superhero",
                movies: ["Guardians of the Galaxy", "The Flash", "The Avengers", "The Dark Knight"],
                expanded: false),
        Section(genre: "👻 Horror",
                movies: ["The Walking Dead", "Insidious", "Conjuring"],
                expanded: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].movies.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if sections[indexPath.section].expanded {
            return 44
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeaderView()
        header.customInit(title: sections[section].genre, section: section, delegate: self)
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()//tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        cell.textLabel?.text = sections[indexPath.section].movies[indexPath.row]
        return cell
    }
    
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        sections[section].expanded = !sections[section].expanded
        
        tableView.beginUpdates()
        for i in 0 ..< sections[section].movies.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
        }
        tableView.endUpdates()
    }
    
}

extension ExpandableHeaderView {
    func customInit(title: String, section: Int, delegate: ExpandableHeaderViewDelegate) {
        
        self.textLabel?.textColor = UIColor.white
        self.contentView.backgroundColor = UIColor.purple
        
        self.textLabel?.text = title + "ozn"
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        view.backgroundColor = .blue
        self.addSubview(view)
        
        self.section = section
        self.delegate = delegate
    }
}
