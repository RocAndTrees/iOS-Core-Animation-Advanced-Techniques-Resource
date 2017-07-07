//
//  ViewController.swift
//  ContentsGravity
//
//  Created by pxl on 2017/7/7.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let image = UIImage(named: "Snowman.png")
        
        self.layerView.layer.contents = image?.cgImage
        
        self.layerView.layer.contentsGravity = kCAGravityCenter
        
        if let scale = image?.scale {
            self.layerView.layer.contentsScale = scale;
        }
//        self.layerView.layer.contentsScale = (image?.scale)!
        
        self.layerView.layer.masksToBounds = true
        
        
        
    }




}
