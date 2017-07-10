//
//  ViewController.swift
//  DrawingTest
//
//  Created by pxl on 2017/7/7.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CALayerDelegate {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueLayer = CALayer()
        
        blueLayer.frame  = CGRect(x: 50.0, y: 50.0, width: 100.0, height: 100.0)
        blueLayer.backgroundColor = UIColor.blue.cgColor
        
        blueLayer.delegate = self
        
        blueLayer.contentsScale = UIScreen.main.scale
        
        self.layerView.layer.addSublayer(blueLayer)
        
        //force layer to redraw
        blueLayer.display()
        
        
        
    }



    func draw(_ layer: CALayer, in ctx: CGContext) {
        ctx.setLineWidth( 10.0)
        ctx.setStrokeColor(UIColor.red.cgColor)
        ctx.strokeEllipse(in: layer.bounds)
        
    }

}
