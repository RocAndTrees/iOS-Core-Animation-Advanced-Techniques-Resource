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
        
        let transfrom = CGAffineTransform(rotationAngle: CGFloat(Double.pi/4))
        
        self.layerImageView.layer.setAffineTransform(transfrom)

        
        
    }





}
