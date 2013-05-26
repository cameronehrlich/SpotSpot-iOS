//
//  SSGestureViewController.h
//  SpotSpot
//
//  Created by Cameron Ehrlich on 5/26/13.
//  Copyright (c) 2013 Cameron Ehrlich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSGestureViewController : UIViewController
- (IBAction)playPause:(id)sender;
- (IBAction)next:(id)sender;
- (IBAction)previous:(id)sender;
- (IBAction)volumeUp:(id)sender;
- (IBAction)volumeDown:(id)sender;

@end
