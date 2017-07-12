//
//  ViewController.swift
//  LayerTest
//
//  Created by pxl on 2017/7/11.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var outerView: UIView!
    
    @IBOutlet weak var innerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
 
        let outer = CATransform3DMakeRotation(CGFloat.pi/4, 0, 0, 1)
        self.outerView.layer.transform = outer
        
        let inner = CATransform3DMakeRotation(-CGFloat.pi/4, 0, 0, 1)
        self.innerView.layer.transform = inner;
        
        
       }


}


/**
 //rotate the outer layer 45 degrees
 CATransform3D outer = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
 self.outerView.layer.transform = outer;
 
 //rotate the inner layer -45 degrees
 CATransform3D inner = CATransform3DMakeRotation(-M_PI_4, 0, 0, 1);
 self.innerView.layer.transform = inner;


 */
