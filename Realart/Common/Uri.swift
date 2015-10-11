//
//  Uri.swift
//  Realart
//
//  Created by 敏宏 加世田 on 10/11/15.
//  Copyright © 2015 Sendee. All rights reserved.
//

import UIKit

class Uri: NSObject {
    let root:String!
    let api:String!
    let usersApi:String!
    let productsApi:String!
    override init(){
//        root = "http://localhost:3000"
        root = "https://realarts.herokuapp.com"
        api = root + "/api/v1"
        usersApi = api + "/users"
        productsApi = api + "/products"
    }
}
