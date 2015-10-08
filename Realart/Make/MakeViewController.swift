//
//  MakeViewController.swift
//  Realart
//
//  Created by 敏宏 加世田 on 9/22/15.
//  Copyright (c) 2015 Sendee. All rights reserved.
//

import UIKit
import CoreImage

class MakeViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var qrImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        postButton.setTitle("投稿", forState:.Normal)
        registerButton.setTitle("登録", forState: .Normal)
        
        nameField.delegate = self
    }
    
    func createQRCode(message: String, correctionLevel: String = "M", moduleSize: CGFloat = 1){
        
        let dat = message.dataUsingEncoding(NSUTF8StringEncoding)!
        
        let qr = CIFilter(name: "CIQRCodeGenerator", withInputParameters: [
            "inputMessage": dat,
            "inputCorrectionLevel": correctionLevel,
            ])!
        
        // moduleSize でリサイズ
        let sizeTransform = CGAffineTransformMakeScale(moduleSize, moduleSize)
        let ciImg = qr.outputImage!.imageByApplyingTransform(sizeTransform)

        qrImageView.image = UIImage(CIImage: ciImg, scale: 1, orientation: .Up)
        
//        return UIImage(CIImage: ciImg, scale: 1, orientation: .Up)
//        let ciContext = CIContext(options: nil)
//        let cgImg = ciContext.createCGImage(ciImg, fromRect: ciImg.extent)
//        return UIImage(CGImage: cgImg, scale: 1, orientation: .Up)
    }
    
    func textFieldDidBeginEditing(textField: UITextField){
        print("textFieldDidBeginEditing:" + textField.text!)
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing:" + textField.text!)
        
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        createQRCode(textField.text!)
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
