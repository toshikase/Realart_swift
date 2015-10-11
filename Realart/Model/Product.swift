//
//  Product.swift
//  Realart
//
//  Created by 敏宏 加世田 on 10/11/15.
//  Copyright © 2015 Sendee. All rights reserved.
//

import UIKit

class Product: NSObject {
    var id: Int?
    var name: String?
    var createdAt: String?
    var user = User()
    
    override init() {}
    init(id:Int, name:String, userId:Int) {
        self.id = id
        self.name = name
        user.id  = userId
    }
}
