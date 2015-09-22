//
//  TakePhotoViewController.swift
//  Realart
//
//  Created by 敏宏 加世田 on 9/22/15.
//  Copyright (c) 2015 Sendee. All rights reserved.
//

import UIKit

class ReadViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
