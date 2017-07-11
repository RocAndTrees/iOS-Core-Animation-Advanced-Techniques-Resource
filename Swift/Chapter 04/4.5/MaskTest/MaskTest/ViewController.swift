//
//  ViewController.swift
//  MaskTest
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let maskLayer = CALayer()
        maskLayer.frame = imageView.bounds
        let maskImage = UIImage(named: "Cone.png")
        maskLayer.contents = maskImage?.cgImage
        
        //apply mask to image layer 
        
        self.imageView.layer.mask = maskLayer
        

    }



}
