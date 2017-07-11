//
//  ViewController.swift
//  LayerTest
//
//  Created by pxl on 2017/7/11.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var layerView1: UIImageView!

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var layerView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
 
       
        var perspective = CATransform3DIdentity
        perspective.m34 = -(1.0/500.0)
        containerView.layer.sublayerTransform = perspective
        
        let transform1 = CATransform3DMakeRotation(CGFloat.pi/4, 0, 1, 0)
        self.layerView1.layer.transform = transform1

        
        let transform2 = CATransform3DMakeRotation(-CGFloat.pi/4, 0, 1, 0)
        self.layerView2.layer.transform = transform2
        
        
        
       }


}


/**
 //apply perspective transform to container
 CATransform3D perspective = CATransform3DIdentity;
 perspective.m34 = - 1.0 / 500.0;
 self.containerView.layer.sublayerTransform = perspective;
	
 //rotate layerView1 by 45 degrees along the Y axis
 CATransform3D transform1 = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
 self.layerView1.layer.transform = transform1;
 
 //rotate layerView2 by 45 degrees along the Y axis
 CATransform3D transform2 = CATransform3DMakeRotation(-M_PI_4, 0, 1, 0);
 self.layerView2.layer.transform = transform2;

 */
