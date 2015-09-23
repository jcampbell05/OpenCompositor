//
//  QCObject.m
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "QCObject.h"

@implementation QCObject

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    if ([QCObject class] == self)
    {
        //TODO: Implement _GFThrowException
        [NSException raise:NSGenericException
                    format:@"\"%@\" is an abstract class that cannot be instantiated", NSStringFromClass([QCObject class])];
    }
    
    return [super allocWithZone:zone];
}

@end
