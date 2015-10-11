//
//  ListViewController.swift
//  Realart
//
//  Created by 敏宏 加世田 on 10/8/15.
//  Copyright © 2015 Sendee. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    let uri = Uri()
    var currentUserId:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        currentUserId = 1
        
        fetchData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "リスト"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Product") as! ListTableViewCell
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
    }
    
    func fetchData(){
        let parameters = [
            "id":currentUserId
        ]
        
        Alamofire.request(.POST, uri.usersApi + "/list", parameters: parameters, encoding: .JSON)
            .responseJSON { request, response, result in
                let jsonObj = JSON(result.value!)
                print(jsonObj)
        }
    }

}

class ListTableViewCell:UITableViewCell{
    
    override func awakeFromNib() {
    
    }
}
