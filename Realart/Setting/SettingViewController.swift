//
//  SettingViewController.swift
//  Realart
//
//  Created by 敏宏 加世田 on 9/22/15.
//  Copyright (c) 2015 Sendee. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 3
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Setting") as! SettingTableViewCell
        
        switch indexPath.row{
        case 0:
            cell.name.text = "利用規約"
        case 1:
            cell.name.text = "プライバシーポリシー"
        case 2:
            cell.name.text = "ログアウト"
        default:
            break
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class SettingTableViewCell:UITableViewCell{
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        
    }
}
