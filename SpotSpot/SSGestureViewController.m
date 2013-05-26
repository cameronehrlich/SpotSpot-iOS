//
//  SSGestureViewController.m
//  SpotSpot
//
//  Created by Cameron Ehrlich on 5/26/13.
//  Copyright (c) 2013 Cameron Ehrlich. All rights reserved.
//

#import "SSGestureViewController.h"
#import "SSModel.h"

@implementation SSGestureViewController {
    SSModel *sharedInstance;
    bool playPauseStatus;
    int currentVolume;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    currentVolume = 20;
    sharedInstance = [SSModel sharedInstance];
}

- (IBAction)playPause:(id)sender {
     playPauseStatus = !playPauseStatus;
    if (playPauseStatus) {
        [sharedInstance play];
    }else{
        [sharedInstance pause];
    }
   
}

- (IBAction)next:(id)sender {
    [sharedInstance next];
}

- (IBAction)previous:(id)sender {
    [sharedInstance previous];
}

- (IBAction)volumeUp:(id)sender {
    currentVolume = currentVolume + 5;
    [sharedInstance volume:currentVolume];
}

- (IBAction)volumeDown:(id)sender {
    currentVolume = currentVolume - 5;
    [sharedInstance volume:currentVolume];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
