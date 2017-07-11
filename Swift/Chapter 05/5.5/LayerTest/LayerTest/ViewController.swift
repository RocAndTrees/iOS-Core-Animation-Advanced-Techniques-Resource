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
 
        var tranform = CATransform3DIdentity
        
        tranform.m34 = -(1.0/500.0)
        
        tranform = CATransform3DRotate(tranform, CGFloat.pi/4, 0, 1, 0)
        
        layerImageView.layer.transform = tranform
        
        
       }


}


/**
 //create a new transform
 CATransform3D transform = CATransform3DIdentity;
 
 //apply perspective
 transform.m34 = - 1.0 / 500.0;
	
 //rotate by 45 degrees along the Y axis
 transform = CATransform3DRotate(transform, M_PI_4, 0, 1, 0);
 
 //apply to layer
 self.layerView.layer.transform = transform;
 */
