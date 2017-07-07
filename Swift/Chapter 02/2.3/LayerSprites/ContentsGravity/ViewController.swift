//
//  ViewController.swift
//  ContentsGravity
//
//  Created by pxl on 2017/7/7.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coneView: UIView!
    @IBOutlet weak var iglooView: UIView!
    @IBOutlet weak var AnchorView: UIView!

    @IBOutlet weak var shipView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
     
        let image = UIImage(named: "Sprites.png")
        
        guard let image1 = image else {return}
        
        addSpriteImage(image1, CGRect(x: 0, y: 0, width: 0.5, height: 0.5), self.coneView.layer)
        addSpriteImage(image1, CGRect(x: 0.5, y: 0, width: 0.5, height: 0.5), self.iglooView.layer)
        addSpriteImage(image1, CGRect(x: 0, y: 0.5, width: 0.5, height: 0.5), self.AnchorView.layer)
        addSpriteImage(image1, CGRect(x: 0.5, y: 0.5, width: 0.5, height: 0.5), self.shipView.layer)
        
    }

    
    /// 根据给的CGRect 来进行 图片的分割显示
    ///
    /// - Parameters:
    ///   - image: iamge
    ///   - rect: rect
    ///   - layer: layer
    func addSpriteImage(_ image: UIImage, _ rect: CGRect, _ layer: CALayer) {
        
        layer.contents = image.cgImage
        
        layer.contentsGravity = kCAGravityResizeAspect
        
        layer.contentsRect = rect
        
        
    }


}
