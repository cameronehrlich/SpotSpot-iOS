//
//  SSModel.h
//  SpotSpot
//
//  Created by Cameron Ehrlich on 5/26/13.
//  Copyright (c) 2013 Cameron Ehrlich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSModel : NSObject

+ (id)sharedInstance;


- (void)play;
- (void)pause;
- (void)next;
- (void)previous;
- (void)volume:(float)value;

@end
