//
//  SSViewController.h
//  SpotSpot
//
//  Created by Cameron Ehrlich on 5/26/13.
//  Copyright (c) 2013 Cameron Ehrlich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSViewController : UIViewController

- (IBAction)play:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)next:(id)sender;
- (IBAction)previous:(id)sender;
- (IBAction)volume:(UISlider *)sender;

@end
