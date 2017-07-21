//
//  ViewController.swift
//  ShapeLayerTest
//
//  Created by pxl on 2017/7/18.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 175, y: 100))
        path.addArc(withCenter: CGPoint(x: 150, y: 100), radius: 25, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
        path.move(to: CGPoint(x: 150, y: 125))
        path.addLine(to: CGPoint(x: 150, y: 175))
        path.addLine(to: CGPoint(x: 125, y: 225))
        path.move(to: CGPoint(x: 150, y: 175))
        path.addLine(to: CGPoint(x: 175, y: 225))
        path.move(to: CGPoint(x: 100, y: 150))
        path.addLine(to: CGPoint(x: 200, y: 150))
        
        //2
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.lineJoin = kCALineCapRound
        shapeLayer.lineCap = kCALineCapRound
        shapeLayer.path = path.cgPath
        
        self.containerView.layer.addSublayer(shapeLayer)
    
        
    
    
    
    }

  
}
/**
 //create path
 UIBezierPath *path = [[UIBezierPath alloc] init];
 [path moveToPoint:CGPointMake(175, 100)];
 [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
 [path moveToPoint:CGPointMake(150, 125)];
 [path addLineToPoint:CGPointMake(150, 175)];
 [path addLineToPoint:CGPointMake(125, 225)];
 [path moveToPoint:CGPointMake(150, 175)];
 [path addLineToPoint:CGPointMake(175, 225)];
 [path moveToPoint:CGPointMake(100, 150)];
 [path addLineToPoint:CGPointMake(200, 150)];
 
 //create shape layer
 CAShapeLayer *shapeLayer = [CAShapeLayer layer];
 shapeLayer.strokeColor = [UIColor redColor].CGColor;
 shapeLayer.fillColor = [UIColor clearColor].CGColor;
 shapeLayer.lineWidth = 5;
 shapeLayer.lineJoin = kCALineJoinRound;
 shapeLayer.lineCap = kCALineCapRound;
 shapeLayer.path = path.CGPath;
 
 //add it to our view
 [self.containerView.layer addSublayer:shapeLayer];
 
 
 */
