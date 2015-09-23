//
//  QCComposition.m
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "QCComposition.h"

#import "GFNodeManager.h"
#import "QCImage.h"

@interface QCComposition ()

@property (nonatomic, strong) id backing;

@end

@implementation QCComposition

+ (void)initialize
{
    [GFNodeManager lock];
    [QCImage class];
    [GFNodeManager unlock];
}

+ (instancetype)compositionWithFile:(NSString *)filePath;
{
    if ([filePath length] == 0)
    {
        //TODO: Implement _GFThrowException
        [NSException raise:NSInternalInconsistencyException
                    format:@"String argument \"%s\" cannot be empty", "path"];
    }
    
    QCComposition *composition = [[QCComposition alloc] initWithBacking:filePath];
    return composition;
}

+ (instancetype)compositionWithData:(NSData *)compositionData
{
    
}

- (instancetype)initWithBacking:(id)backing
{
    if (backing)
    {
        if (![backing isKindOfClass:[NSString class]])
        {
            if(![backing isKindOfClass:[NSData class]])
            {
                if(![backing isKindOfClass:[NSDictionary class]] &&
                   ![backing isKindOfClass:[NSURL class]])
                {
                    //TODO: Implement _GFThrowException
                    [NSException raise:NSInternalInconsistencyException
                                format:@"Inconsistent state"];
                }
            }
        }
        
        self = [super init];
        
        if (self)
        {
            self.backing = [backing copy];
        }
    }
    
    return self;
}

@end
