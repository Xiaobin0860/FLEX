//
//  libFLEX.m
//  libFLEX
//
//  Created by Xiaobin Li on 11/20/14.
//  Copyright (c) 2014 __MyCompanyName__. All rights reserved.
//

#import "libFLEX.h"
#import "FLEXManager.h"

@implementation libFLEX

-(id)init
{
	if ((self = [super init]))
    {
        if (self)
        {
            [[NSNotificationCenter defaultCenter] addObserver:self
                                                     selector:@selector(appLaunched:)
                                                         name:UIApplicationDidBecomeActiveNotification
                                                       object:nil];
        }
	}
    
	return self;
}

- (void)appLaunched:(NSNotification *)notification
{
    [[FLEXManager sharedManager] showExplorer];
}

@end

static void __attribute__((constructor)) initialize(void)
{
    static libFLEX *entrance;
    entrance = [[libFLEX alloc] init];
}