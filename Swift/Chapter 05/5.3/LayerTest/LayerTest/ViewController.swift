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
 
        
        
        
        self.layerImageView.layer.setAffineTransform(CGAffineTransfromMakeShear(1, 0))
        
        
        
    }

    
    func CGAffineTransfromMakeShear(_ x: CGFloat, _ y: CGFloat) -> CGAffineTransform {
        
        var transfrom = CGAffineTransform.identity
        
        transfrom.c = -x
        transfrom.b = y
        return transfrom
    }




}
