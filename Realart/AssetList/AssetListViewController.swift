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
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        currentUserId = 1
        
//        fetchData()
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
//        return products.count
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Product") as! ListTableViewCell
        
//        cell.productName.text = products[indexPath.row].name
//        cell.producerName.text = products[indexPath.row].user.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath){
        let storyboard = UIStoryboard(name: "Product", bundle: nil)
        let controller = storyboard.instantiateViewControllerWithIdentifier("ProductVC") as! ProductViewController
        self.navigationController!.pushViewController(controller, animated:true)
    }
    
    func fetchData(){
        let parameters = [
            "id":currentUserId
        ]
        
        Alamofire.request(.POST, uri.productsApi + "/list", parameters: parameters, encoding: .JSON)
            .responseJSON { request, response, result in
                let jsonObj = JSON(result.value!)
                print(jsonObj)
                let productsCount = jsonObj.count
                for var index = 0; index < productsCount; index++ {
                    let product = Product(
                        id:         jsonObj[index]["id"].int!,
                        name:       jsonObj[index]["body"].string!,
                        userId:     jsonObj[index]["user_id"].int!
                    )
                    self.products.append(product)
                }
        }
    }

}

class ListTableViewCell:UITableViewCell{
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var producerName: UILabel!
    
    override func awakeFromNib() {
    
    }
}
