//
//  ViewController.swift
//  TextLayerTest
//
//  Created by pxl on 2017/7/19.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let textLayer = CATextLayer()
        textLayer.frame = self.labelView.bounds
        self.labelView.layer.addSublayer(textLayer)
        
        textLayer.contentsScale = UIScreen.main.scale
        
        textLayer.foregroundColor = UIColor.black.cgColor
        textLayer.alignmentMode = kCAAlignmentJustified
        textLayer.isWrapped = true
        
        let font = UIFont.systemFont(ofSize: 15)
        
        let fontName = font.fontName
        let fontRef = CGFont(fontName as CFString)
//            CFTypeRef(fontName)
        textLayer.font = fontRef
        textLayer.fontSize = font.pointSize
//        CGFontRelease(fontRef!)
//        CGFont(fontRef)
        
        
        let text = "Lorem ipsum dolor sit amet, consectetur adipiscing \n elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \n leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \n elementum, libero ut porttitor dictum, diam odio congue lacus, vel \n fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \n lobortis"

        
        textLayer.string = text;

        
    
    }

 


}

/*
 //create a text layer
 CATextLayer *textLayer = [CATextLayer layer];
 textLayer.frame = self.labelView.bounds;
 [self.labelView.layer addSublayer:textLayer];
 
 //uncomment the line below to fix pixelation on Retina screens
 //textLayer.contentsScale = [UIScreen mainScreen].scale;
 
 //set text attributes
 textLayer.foregroundColor = [UIColor blackColor].CGColor;
 textLayer.alignmentMode = kCAAlignmentJustified;
 textLayer.wrapped = YES;
 
 //choose a font
 UIFont *font = [UIFont systemFontOfSize:15];
 
 //set layer font
 CFStringRef fontName = (__bridge CFStringRef)font.fontName;
 CGFontRef fontRef = CGFontCreateWithFontName(fontName);
 textLayer.font = fontRef;
 textLayer.fontSize = font.pointSize;
 CGFontRelease(fontRef);
 
 //choose some text
 NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing \
 elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \
 leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \
 elementum, libero ut porttitor dictum, diam odio congue lacus, vel \
 fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \
 lobortis";
 
 //set layer text
 textLayer.string = text;
 
 */
