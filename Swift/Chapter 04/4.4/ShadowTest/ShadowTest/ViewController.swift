     //
//  ViewController.swift
//  ShadowTest
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var layerView1: UIImageView!

    @IBOutlet weak var layerView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //enable layer shadows 
        layerView1.layer.shadowOpacity = 0.5
        layerView2.layer.shadowOpacity = 0.5
        
        //create a suqare shadow
        let suqarePath: CGMutablePath =  CGMutablePath()
        suqarePath.addRect(self.layerView1.bounds)
        layerView1.layer.shadowPath = suqarePath
        
        //create a cirular
        let circlePath: CGMutablePath =  CGMutablePath()
        circlePath.addEllipse(in: layerView2.bounds)
        layerView2.layer.shadowPath = circlePath
        
//        circlePath.closeSubpath()
        
        
    }

 
     
    
}
