//
//  ViewController.swift
//  ClipTest
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView2: UIView!
    @IBOutlet weak var layerView1: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        layerView1.layer.cornerRadius = 20
        layerView2.layer.cornerRadius = 20
        
        self.layerView2.layer.masksToBounds = true
        
        
        
    }



}
