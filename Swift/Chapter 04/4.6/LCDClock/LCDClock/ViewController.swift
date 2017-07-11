//
//  ViewController.swift
//  LCDClock
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var digitViews: [UIView]!

    var timer : Timer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let digits = #imageLiteral(resourceName: "Digits.png")
        
        for var view in self.digitViews {
            
            view.layer.contents = digits.cgImage
            view.layer.contentsRect = CGRect(x: 0, y: 0, width: 0.1, height: 0.1)
            view.layer.contentsGravity = kCAGravityResizeAspect
            
            view.layer.magnificationFilter = kCAFilterNearest
            
            
            
        }
        
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.tick()
        })
        
        
        tick()
    
    
    }


    func tick() {
        let calendar : NSCalendar = NSCalendar(calendarIdentifier: .gregorian)!
        
        let components = calendar.components([.hour, .minute, .second], from: Date())
        
//        let hourAngle : CGFloat = (CGFloat(components.hour!) / 12.0) * CGFloat.pi * 2.0;
//        
//        let minuteAngle : CGFloat = (CGFloat( components.minute!) / 60.0) * CGFloat.pi * 2.0;
//        
//        let secondAngle : CGFloat = (CGFloat(components.second!) / 60.0) * CGFloat.pi * 2.0;
        
        
        
        digit(components.hour!/10, self.digitViews[0])
        digit(components.hour!%10, self.digitViews[1])
        
        digit(components.minute!/10, self.digitViews[2])
        digit(components.minute!%10, self.digitViews[3])
        
        digit(components.second!/10, self.digitViews[4])
        digit(components.second!%10, self.digitViews[5])
        
        
//        hourHand.transform = CGAffineTransform(rotationAngle: hourAngle)
//        minutHand.transform = CGAffineTransform(rotationAngle: minuteAngle)
//        secondHand.transform = CGAffineTransform(rotationAngle: secondAngle)
        
    }

    func digit(_ digit: NSInteger, _ view: UIView)  {
        view.layer.contentsRect = CGRect(x: (Double(digit) * 0.1), y: 0, width: 0.1, height: 1.0)
    }
    



}
