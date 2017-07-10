//
//  ViewController.swift
//  ClockFace
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    @IBOutlet weak var secondHand: UIImageView!
    @IBOutlet weak var minutHand: UIImageView!
    @IBOutlet weak var hourHand: UIImageView!
    var timer: Timer! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        secondHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.9)
        hourHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.9)
        minutHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.9)
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.tick()
        })
        
        
        tick()
        
    }

    
    func tick() {
        let calendar : NSCalendar = NSCalendar(calendarIdentifier: .gregorian)!
        
        let components = calendar.components([.hour, .minute, .second], from: Date())
        
        let hourAngle : CGFloat = (CGFloat(components.hour!) / 12.0) * CGFloat.pi * 2.0;
        
        let minuteAngle : CGFloat = (CGFloat( components.minute!) / 60.0) * CGFloat.pi * 2.0;
        
        let secondAngle : CGFloat = (CGFloat(components.second!) / 60.0) * CGFloat.pi * 2.0;

        
        hourHand.transform = CGAffineTransform(rotationAngle: hourAngle)
        minutHand.transform = CGAffineTransform(rotationAngle: minuteAngle)
        secondHand.transform = CGAffineTransform(rotationAngle: secondAngle)
        
    }


}

