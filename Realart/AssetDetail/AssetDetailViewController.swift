//
//  ProductViewController.swift
//  Realart
//
//  Created by 敏宏 加世田 on 11/14/15.
//  Copyright © 2015 Sendee. All rights reserved.
//

import UIKit

class AssetDetailViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        //tableViewの高さをlabelの長さで調整
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableViewAutomaticDimension

        self.view.addSubview(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        switch section{
        case 0:
            return 1
        case 1:
            return 3
        default:
            return 1
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return 100
        case 1:
            return 60
        default:
            return 60
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("pictureIdentifier") as! PictureTableViewCell
            cell.productImage.image = UIImage(named: "picasso.png")
            return cell
        case 1:
            switch indexPath.row{
            case 0:
                let cell = tableView.dequeueReusableCellWithIdentifier("infoIdentifier") as! ProductInfoTableViewCell
                cell.productTitle.text = "Name"
                cell.productName.text = "The Weeping Woman"
                return cell
            case 1:
                let cell = tableView.dequeueReusableCellWithIdentifier("infoIdentifier") as! ProductInfoTableViewCell
                cell.productTitle.text = "Author"
                cell.productName.text = "Picasso"
                return cell
            case 2:
                let cell = tableView.dequeueReusableCellWithIdentifier("infoIdentifier") as! ProductInfoTableViewCell
                cell.productTitle.text = "Date"
                cell.productName.text = "1937"
                return cell
            default:
                let cell = tableView.dequeueReusableCellWithIdentifier("infoIdentifier") as! ProductInfoTableViewCell
                cell.productTitle.text = "Name"
                cell.productName.text = "Art1"
                return cell
            }
            
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("infoIdentifier") as! ProductInfoTableViewCell
            return cell
        }
    }
}

class PictureTableViewCell: UITableViewCell{
    @IBOutlet weak var productImage: UIImageView!
        
}

class ProductInfoTableViewCell: UITableViewCell{
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productName: UILabel!
}
