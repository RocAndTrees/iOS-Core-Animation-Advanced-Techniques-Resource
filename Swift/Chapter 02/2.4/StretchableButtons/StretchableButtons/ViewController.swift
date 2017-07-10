//
//  ViewController.swift
//  StretchableButtons
//
//  Created by pxl on 2017/7/7.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button2: UIView!
    @IBOutlet weak var button1: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
         guard let image = UIImage(named: "Button.png") else {
            return
        }
        
        addStretchable(image, CGRect(x: 0.25, y: 0.25, width: 0.5, height: 0.5), button2.layer)
        addStretchable(image, CGRect(x: 0.25, y: 0.25, width: 0.5, height: 0.5), button1.layer)
        
        
    }

    func addStretchable(_ image: UIImage, _ rect: CGRect, _ layer: CALayer) {
        
        layer.contents = image.cgImage
        
        layer.contentsCenter = rect
        
        
    }


}
