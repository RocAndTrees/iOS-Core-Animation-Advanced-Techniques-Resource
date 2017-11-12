//
//  ViewController.m
//
//  Created by Nick Lockwood on 03/02/2013.
//  Copyright (c) 2013 Charcoal Design. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIView *layerView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //rotate the layer 45 degrees
    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
    self.layerView.layer.affineTransform = transform;
    
    UIView* view1 = [UIView new];
    [self.view addSubview:view1];
    view1.frame = CGRectMake(100, 200, 100, 100);
    view1.backgroundColor = [UIColor redColor];
    
    view1.transform = transform;
    
}

@end

