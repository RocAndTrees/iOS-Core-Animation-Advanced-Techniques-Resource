//
//  ViewController.swift
//  ContentsTest
//
//  Created by pxl on 2017/7/7.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    //load an image
//        let image = UIImage.init(named: "Snowman.png")
        let image = UIImage(named: "Snowman.png")
        //add it directly to our view's layer
        self.layerView.layer.contents = image?.cgImage
        
        //undistort the image
        self.layerView.layer.contentsGravity = kCAGravityResizeAspect
        
        
    
    
    
    }
    
    
    
    
    
}
