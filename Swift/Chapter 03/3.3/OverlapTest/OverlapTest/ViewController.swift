//
//  ViewController.swift
//  OverlapTest
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var greenView: UIView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.greenView.layer.zPosition = 1.0
        
    }



}
