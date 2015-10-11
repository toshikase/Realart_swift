//
//  User.swift
//  Realart
//
//  Created by 敏宏 加世田 on 10/11/15.
//  Copyright © 2015 Sendee. All rights reserved.
//

import UIKit

class User: NSObject {
    var id: Int?
    var name: String?
    var email: String?
    var createdAt: String?
    override init() {}
    init(id:Int, email:String) {
        self.id = id
        self.email = email
    }
}
