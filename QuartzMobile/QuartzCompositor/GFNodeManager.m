//
//  GFNodeManager.m
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "GFNodeManager.h"

#import <pthread.h>

pthread_mutex_t managerMutex;

@implementation GFNodeManager

+ (void)lock
{
    pthread_mutex_lock(&managerMutex);
}

+ (void)unlock
{
    pthread_mutex_unlock(&managerMutex);
}

@end
