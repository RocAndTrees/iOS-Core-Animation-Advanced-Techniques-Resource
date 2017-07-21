//
//  ViewController.swift
//  TextLayerTest
//
//  Created by pxl on 2017/7/20.
//  Copyright © 2017年 pxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let textLayer = CATextLayer()
        textLayer.frame = self.labelView.bounds
        textLayer.contentsScale = UIScreen.main.scale
        self.labelView.layer.addSublayer(textLayer)
        
        //text attributes
        textLayer.alignmentMode = kCAAlignmentJustified
        textLayer.isWrapped = true
        //choose a font
        let font = UIFont.systemFont(ofSize: 15)
        //choose some text 
        let text = "Lorem ipsum dolor sit amet, consectetur adipiscing \n elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \n leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \n elementum, libero ut porttitor dictum, diam odio congue lacus, vel \n fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \n lobortis"

        var string = NSMutableAttributedString(string: text);
    
        //convert UIFont to a CTFont
        let fontName = font.fontName
        let fontSize = font.pointSize
//        let fontRef = CGFont(fontName as CFString)
        let fontRef = CTFontCreateWithName(fontName as CFString, fontSize, nil)
        //set text attributes
//        let attribs = [kCTForegroundColorAttributeName:UIColor.red.CGColor,
//                       kCTFontAttributeName:fontRef
//                       ]
//        string.setAttributes(attribs, range: NSMakeRange(0, text.length))
        
        
        
    
    
    
    }




}


/*
 
 //create a text layer
 CATextLayer *textLayer = [CATextLayer layer];
 textLayer.frame = self.labelView.bounds;
 textLayer.contentsScale = [UIScreen mainScreen].scale;
 [self.labelView.layer addSublayer:textLayer];
 
 //set text attributes
 textLayer.alignmentMode = kCAAlignmentJustified;
 textLayer.wrapped = YES;
 
 //choose a font
 UIFont *font = [UIFont systemFontOfSize:15];
 
 //choose some text
 NSString *text = @"Lorem ipsum dolor sit amet, consectetur adipiscing \
 elit. Quisque massa arcu, eleifend vel varius in, facilisis pulvinar \
 leo. Nunc quis nunc at mauris pharetra condimentum ut ac neque. Nunc \
 elementum, libero ut porttitor dictum, diam odio congue lacus, vel \
 fringilla sapien diam at purus. Etiam suscipit pretium nunc sit amet \
 lobortis";
 
 //create attributed string
 NSMutableAttributedString *string = nil;
 string = [[NSMutableAttributedString alloc] initWithString:text];
 
 //convert UIFont to a CTFont
 CFStringRef fontName = (__bridge CFStringRef)font.fontName;
 CGFloat fontSize = font.pointSize;
 CTFontRef fontRef = CTFontCreateWithName(fontName, fontSize, NULL);
 
 //set text attributes
 NSDictionary *attribs = @{
 (__bridge id)kCTForegroundColorAttributeName:
 (__bridge id)[UIColor blackColor].CGColor,
 (__bridge id)kCTFontAttributeName: (__bridge id)fontRef
 };
 [string setAttributes:attribs range:NSMakeRange(0, [text length])];
 attribs = @{
 (__bridge id)kCTForegroundColorAttributeName:
 (__bridge id)[UIColor redColor].CGColor,
 (__bridge id)kCTUnderlineStyleAttributeName:
 @(kCTUnderlineStyleSingle),
 (__bridge id)kCTFontAttributeName: (__bridge id)fontRef
 };
 [string setAttributes:attribs range:NSMakeRange(6, 5)];
 
 //release the CTFont we created earlier
 CFRelease(fontRef);
 
 //set layer text
 textLayer.string = string;



*/
