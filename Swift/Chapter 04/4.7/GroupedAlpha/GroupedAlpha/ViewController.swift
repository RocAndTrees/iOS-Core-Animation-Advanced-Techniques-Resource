//
//  ViewController.swift
//  GroupedAlpha
//
//  Created by pxl on 2017/7/10.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let button1 = customButton()
        button1.center = CGPoint(x: 50, y: 150)
        self.containerView.addSubview(button1)
        
        
        let button2 = customButton()
        button2.alpha = 0.5
        button2.center = CGPoint(x: 250, y: 150)
        self.containerView.addSubview(button2)
    
    }

    func customButton() -> UIButton {
        
        var frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        let button = UIButton(frame: frame)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 10
        button.layer.shouldRasterize = false
        //add label
        frame = CGRect(x: 20, y: 10, width: 110, height: 30)
        let label = UILabel(frame: frame)
        label.text = "Hello World"
        label.textAlignment = .center
        button.addSubview(label)
        
        return button
    }
    
    

}

