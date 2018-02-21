//
//  AlaattinViewController.swift
//  BookmarkMobile
//
//  Created by Alaattin Bedir on 20.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import UIKit
import SnapKit

class AlaattinViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Snapkit"
        
        view.backgroundColor = Styling.colorForCode(.themeBlue)
        
        let box = RoundView()
        box.bgColor = Styling.colorForCode(.themeGray)
        
        let header = UIImageView()
        header.image = UIImage(named:"fractal")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "CABJ")
        logo.contentMode = .scaleAspectFit
        
        let headerButton = RoundButton()
        headerButton.setTitle("Header", for: .normal)
        headerButton.setTitleColor(Styling.colorForCode(.themeBlue), for: .normal)
        headerButton.backgroundColor = Styling.colorForCode(.themeLight)
        
        let footerButton = AlignedImageButton()
        footerButton.setTitle("Go To Tableview", for: .normal)
        footerButton.setTitleColor(Styling.colorForCode(.themeBlue), for: .normal)
        footerButton.setImage(UIImage(named:"EditIcon")?.withRenderingMode(.alwaysTemplate), for: .normal)
        footerButton.backgroundColor = Styling.colorForCode(.themeLight)
        footerButton.addTarget(self, action: #selector(onButtonClick(button:)), for: .touchUpInside)
        
        view.addSubview(box)
        view.addSubview(header)
        view.addSubview(logo)
        view.addSubview(headerButton)
        view.addSubview(footerButton)
        
        box.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.right.equalTo(view).offset(-10)
            make.bottom.equalTo(view).offset(-10)
            make.left.equalTo(view).offset(10)
        }
        
        header.snp.makeConstraints { (make) in
            make.height.equalTo(box.snp.height).dividedBy(4)
            make.top.equalTo(box.snp.top)
            make.right.equalTo(box.snp.right)
            make.left.equalTo(box.snp.left)
        }
        
        logo.snp.makeConstraints { (make) in
            make.height.equalTo(header.snp.height)
            make.center.equalTo(header.snp.center)
        }
        
        headerButton.snp.makeConstraints { (make) in
            make.top.equalTo(header.snp.bottom)
            make.height.equalTo(50)
            make.left.equalTo(box.snp.left)
            make.right.equalTo(box.snp.right)
        }
        
        footerButton.snp.makeConstraints { (make) in
            make.left.equalTo(box.snp.left)
            make.right.equalTo(box.snp.right)
            make.bottom.equalTo(box.snp.bottom)
            make.height.equalTo(50)
        }
        
        
    }
    
    @objc func onButtonClick(button: UIButton) {
        navigationController?.pushViewController(TableViewController(), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
