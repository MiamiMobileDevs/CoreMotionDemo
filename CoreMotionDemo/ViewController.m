//
//  ViewController.m
//  CoreMotionDemo
//
//  Created by roberto arciniegas on 10/12/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnStopContinous:(id)sender
{
    [self.motion stopPushingAccelerationUpdates];
}

- (void) motionSentMessage: (NSString *)msg
{
    
}

- (void) motionSentX:(double) x andY:(double)y andZ:(double)z
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
