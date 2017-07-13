//
//  ViewController.swift
//  CubeTest
//
//  Created by pxl on 2017/7/12.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var faces: [UIView]!
    @IBOutlet weak var containerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var perspective = CATransform3DIdentity
        perspective.m34 = -1.0/500.0
        perspective = CATransform3DRotate(perspective, -CGFloat.pi/4, 1, 0, 0)
        perspective = CATransform3DRotate(perspective, -CGFloat.pi/4, 0, 1, 0)
        self.containerView.layer.sublayerTransform = perspective
        
        var transform = CATransform3DMakeTranslation(0, 0, 100)
        addFace(0, transform: transform)
    
    
        
        //add cube face 2
        transform = CATransform3DMakeTranslation(100, 0, 0);
        transform = CATransform3DRotate(transform, CGFloat.pi/2, 0, 1, 0)
        addFace(1, transform: transform)
        
        //add cube face 3
        //move this code after the setup for face no. 6 to enable button
        transform = CATransform3DMakeTranslation(0, -100, 0)
        transform = CATransform3DRotate(transform, CGFloat.pi/2, 1, 0, 0);
        addFace(2, transform: transform)

        
        //add cube face 4
        transform = CATransform3DMakeTranslation(0, 100, 0);
        transform = CATransform3DRotate(transform, -CGFloat.pi/2, 1, 0, 0);
        addFace(3, transform: transform)

        
        //add cube face 5
        transform = CATransform3DMakeTranslation(-100, 0, 0);
        transform = CATransform3DRotate(transform, -CGFloat.pi/2, 0, 1, 0);
        addFace(4, transform: transform)
        
        //add cube face 6
        transform = CATransform3DMakeTranslation(0, 0, -100);
        transform = CATransform3DRotate(transform, CGFloat.pi, 0, 1, 0);
        addFace(5, transform: transform)

    }

    
    func addFace(_ index: NSInteger, transform: CATransform3D) {
        let face = self.faces[index]
        self.containerView.addSubview(face)
        
        let containerSize = self.containerView.bounds.size
        
        face.center = CGPoint(x: containerSize.width/2.0, y: containerSize.height/2.0)
        
        face.layer.transform = transform
    }
}

/**
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 
 //set up the container sublayer transform
 CATransform3D perspective = CATransform3DIdentity;
 perspective.m34 = -1.0 / 500.0;
 perspective = CATransform3DRotate(perspective, -M_PI_4, 1, 0, 0);
 perspective = CATransform3DRotate(perspective, -M_PI_4, 0, 1, 0);
 self.containerView.layer.sublayerTransform = perspective;
 
 //add cube face 1
 CATransform3D transform = CATransform3DMakeTranslation(0, 0, 100);
 [self addFace:0 withTransform:transform];
 
 //add cube face 2
 transform = CATransform3DMakeTranslation(100, 0, 0);
 transform = CATransform3DRotate(transform, M_PI_2, 0, 1, 0);
 [self addFace:1 withTransform:transform];
 
 //add cube face 3
 //move this code after the setup for face no. 6 to enable button
 transform = CATransform3DMakeTranslation(0, -100, 0);
 transform = CATransform3DRotate(transform, M_PI_2, 1, 0, 0);
 [self addFace:2 withTransform:transform];
 
 //add cube face 4
 transform = CATransform3DMakeTranslation(0, 100, 0);
 transform = CATransform3DRotate(transform, -M_PI_2, 1, 0, 0);
 [self addFace:3 withTransform:transform];
 
 //add cube face 5
 transform = CATransform3DMakeTranslation(-100, 0, 0);
 transform = CATransform3DRotate(transform, -M_PI_2, 0, 1, 0);
 [self addFace:4 withTransform:transform];
 
 //add cube face 6
 transform = CATransform3DMakeTranslation(0, 0, -100);
 transform = CATransform3DRotate(transform, M_PI, 0, 1, 0);
 [self addFace:5 withTransform:transform];
 }
 
 - (void)addFace:(NSInteger)index withTransform:(CATransform3D)transform
 {
 //get the face view and add it to the container
 UIView *face = self.faces[index];
 [self.containerView addSubview:face];
 
 //center the face view within the container
 CGSize containerSize = self.containerView.bounds.size;
 face.center = CGPointMake(containerSize.width / 2.0,
 containerSize.height / 2.0);
 
 //apply the transform
 face.layer.transform = transform;
 }
 

 
 
 */
