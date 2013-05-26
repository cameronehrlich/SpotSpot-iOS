//
//  SSModel.m
//  SpotSpot
//
//  Created by Cameron Ehrlich on 5/26/13.
//  Copyright (c) 2013 Cameron Ehrlich. All rights reserved.
//

#import "SSModel.h"

static const NSString *localhost = @"http://cam.local:3000/home/";

@implementation SSModel

+ (id)sharedInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)play{
    NSString *call = [NSString stringWithFormat:@"%@%@", localhost, @"play"];
    [self sendRequestWithUrl:call];
}

- (void)pause{
    NSString *call = [NSString stringWithFormat:@"%@%@", localhost, @"pause"];
    [self sendRequestWithUrl:call];
}

- (void)next{
        NSString *call = [NSString stringWithFormat:@"%@%@", localhost, @"next"];
    [self sendRequestWithUrl:call];

}

- (void)previous{
        NSString *call = [NSString stringWithFormat:@"%@%@", localhost, @"previous"];
    [self sendRequestWithUrl:call];

}

- (void)volume:(float)value{
    NSString *call = [NSString stringWithFormat:@"%@%@?value=%f", localhost, @"volume", value];
    [self sendRequestWithUrl:call];
}

- (void) sendRequestWithUrl:(NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *theConnection =[[NSURLConnection alloc] initWithRequest:request delegate:nil];
    NSLog(@"request sent:%@ ", theConnection.description);
}


@end
