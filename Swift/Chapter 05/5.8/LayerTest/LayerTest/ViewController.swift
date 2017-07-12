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
 
        
        var outer = CATransform3DIdentity
        outer.m34 = -CGFloat(1.0/500.0)
        outer = CATransform3DRotate(outer, CGFloat.pi/4, 0, 1, 0)
//        outer = CATransform3DMakeRotation(CGFloat.pi/4, 0, 1, 0)
        self.outerView.layer.transform = outer
        
        
        var inner = CATransform3DIdentity
        inner.m34 = -CGFloat(1.0/500.0)
//        inner = CATransform3DMakeRotation(-CGFloat.pi/4, 0, 1, 0)
        inner = CATransform3DRotate(inner, -CGFloat.pi/4, 0, 1, 0)
        self.innerView.layer.transform = inner;
        
        
       }


}


/**
 //rotate the outer layer 45 degrees
 CATransform3D outer = CATransform3DIdentity;
 outer.m34 = -1.0 / 500.0;
 outer = CATransform3DRotate(outer, M_PI_4, 0, 1, 0);
 self.outerView.layer.transform = outer;
 
 //rotate the inner layer -45 degrees
 CATransform3D inner = CATransform3DIdentity;
 inner.m34 = -1.0 / 500.0;
 inner = CATransform3DRotate(inner, -M_PI_4, 0, 1, 0);
 self.innerView.layer.transform = inner;



 */
