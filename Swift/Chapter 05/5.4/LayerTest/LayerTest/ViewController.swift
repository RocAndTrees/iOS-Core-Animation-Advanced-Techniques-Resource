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
 
        
        
        
        
        let transfrom = CATransform3DMakeRotation(CGFloat.pi/4, 0.0, 1.0, 0.0)
//        (Double.pi/4, 0.0, 1.0, 0.0)
        
        self.layerImageView.layer.transform = transfrom
    }


}
