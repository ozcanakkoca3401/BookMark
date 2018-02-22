//
//  UmutViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit

class UmutViewController: UIViewController {
    
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
        
        
        
//        let a = StepperButton(frame: CGRect(x: 100, y: 400, width: 75, height: 35))
//        a.stepperDelegate = self
//        view.addSubview(a)
        
//        let r = RoundButton(frame: CGRect(x: 60, y: 60, width: 50, height: 50))
//        r.backgroundColor = UIColor.red
//        view.addSubview(r)
        
//        let b = EBLabel(frame: CGRect(x: 20, y: 20, width: 100, height: 40))
//        b.EBtext = "sdfsdfsd"
//        self.view.addSubview(b)
//
//        let f = RoundView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        view.addSubview(f)
//
//
//        let g = EBView(frame: CGRect(x: 50, y: 300, width: 250, height: 100))
//        g.layer.borderColor = UIColor.lightGray.cgColor
//        g.layer.borderWidth = 1
//        view.addSubview(g)
//
//        let slider = HorizontalSlider(frame: CGRect(x: 10, y: 80, width: 200, height: 20))
//        g.addSubview(slider)
//
//        let ad3 = EBLabel(frame: CGRect(x: 10, y: 10, width: 150, height: 25))
//        ad3.EBtext = "Data"
//        ad3.EBcolor = UIColor.blue
//        g.addSubview(ad3)
//
//        let ad = EBLabel(frame: CGRect(x: 10, y: 45, width: 150, height: 25))
//        ad.EBtext = "0.45 GB"
//        ad.EBcolor = UIColor.blue
//        g.addSubview(ad)
//
//        let ad2 = EBLabel(frame: CGRect(x: 150, y: 45, width: 150, height: 25))
//        ad2.EBtext = "11 GB"
//        ad2.EBcolor = UIColor.blue
//        g.addSubview(ad2)
//
//        let touchableViewLabel2 = EBLabel(frame: CGRect(x: 70, y: 18, width: 200, height: 20))
//        touchableViewLabel2.EBtext = NSLocalizedString("Bilge", comment: "")
//        view.addSubview(touchableViewLabel2)
//        touchableViewLabel2.EBfont = Styling.font(weight: .bold, size: 15)
//        touchableViewLabel2.textColor = Styling.colorForCode(.themeGray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UmutViewController: StepperProtocol {
    func minus() {
        print("minus")
    }
    
    func plus() {
        print("plus")
    }
}

extension UmutViewController: UITableViewDelegate, UITableViewDataSource, ExpandableHeaderViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].movies.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (sections[indexPath.section].expanded) {
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
        
                let g = EBView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 90))
                g.backgroundColor = UIColor(red: 248/255, green: 249/255, blue: 250/255, alpha: 1.0)
        
                let ad3 = EBLabel(frame: CGRect(x: 10, y: 5, width: 100, height: 22))
                ad3.EBtext = "Data"
                ad3.EBcolor = UIColor(red: 164/255, green: 163/255, blue: 161/255, alpha: 1.0)
                g.addSubview(ad3)

                let ad = EBLabel(frame: CGRect(x: 10, y: 35, width: 100, height: 22))
                ad.EBtext = "0.45 GB"
                ad.EBcolor = UIColor(red: 112/255, green: 113/255, blue: 111/255, alpha: 1.0)
                g.addSubview(ad)

                let ad2 = EBLabel(frame: CGRect(x: 200, y: 35, width: 100, height: 22))
                ad2.EBtext = "11 GB"
                ad2.EBcolor = UIColor(red: 164/255, green: 163/255, blue: 161/255, alpha: 1.0)
                g.addSubview(ad2)
        
        let step = HorizontalSlider(frame: CGRect(x: 10, y: 65, width: 200, height: 20))
        step.initialize()
        g.addSubview(step)
    
        header.addSubview(g)
        
        header.customInit(section: section, delegate: self)
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        let a = UIButton(frame: CGRect(x: 10, y: 10, width: 70, height: 30))
        a.setTitle("ADD", for: .normal)
        a.backgroundColor = UIColor.cyan
        cell.addSubview(a)
        
        return cell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
//        cell.textLabel?.text = sections[indexPath.section].movies[indexPath.row]
//        return cell
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
