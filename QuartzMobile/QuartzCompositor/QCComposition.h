//
//  QCComposition.h
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QCComposition : NSObject

+ (instancetype)compositionWithFile:(NSString *)path;
+ (instancetype)compositionWithData:(NSData *)data;

@end
