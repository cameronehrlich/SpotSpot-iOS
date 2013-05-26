//
//  SSViewController.m
//  SpotSpot
//
//  Created by Cameron Ehrlich on 5/26/13.
//  Copyright (c) 2013 Cameron Ehrlich. All rights reserved.
//

#import "SSViewController.h"
#import "SSModel.h"

@implementation SSViewController {
    SSModel *sharedInstance;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     sharedInstance = [SSModel sharedInstance];
}

- (IBAction)play:(id)sender {
    [sharedInstance play];
}

- (IBAction)pause:(id)sender {
    [sharedInstance pause];
    
}

- (IBAction)next:(id)sender {
    [sharedInstance next];
    
}

- (IBAction)previous:(id)sender {
    [sharedInstance previous];
}

- (IBAction)volume:(UISlider *)sender {
    [sharedInstance volume:sender.value];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
