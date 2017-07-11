//
//  ViewController.swift
//  LayerTest
//
//  Created by pxl on 2017/7/11.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
 
        var transfrom = CGAffineTransform.identity
        

        transfrom = transfrom.scaledBy(x: 0.5, y: 0.5)
        transfrom = transfrom.rotated(by: CGFloat(Double.pi/180.0 * 30.0))
        transfrom = transfrom.translatedBy(x: 200, y: 0)
        
        self.layerImageView.layer.setAffineTransform(transfrom)
        
        
        
        
    }





}
