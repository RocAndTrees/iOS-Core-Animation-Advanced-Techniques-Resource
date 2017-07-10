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
    
    @IBOutlet weak var shadowView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        layerView1.layer.cornerRadius = 20
        layerView2.layer.cornerRadius = 20
        
        
        layerView1.layer.borderWidth = 5.0
        layerView2.layer.borderWidth = 5.0
        
        //add shadow  view 2
        layerView2.layer.shadowOpacity = 0.5
        layerView2.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        layerView2.layer.shadowRadius = 5.0
        
        //add shadow view 1
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        shadowView.layer.shadowRadius = 5.0

        
        
        
        
        self.shadowView.layer.masksToBounds = true
        
        
        
    }



}
