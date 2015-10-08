//
//  ViewController.swift
//  Realart
//
//  Created by 敏宏 加世田 on 9/22/15.
//  Copyright (c) 2015 Sendee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarControllerDelegate {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "art.jpg")!)
        titleLabel.text = "Realarts"
        titleLabel.font = UIFont(name: "Times New Roman", size: 32)
        
        subTitleLabel.font = UIFont(name:"Times New Roman", size:16)
        subTitleLabel.text = "Anti-Counterfeit Service\nBased On Blockchain"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

