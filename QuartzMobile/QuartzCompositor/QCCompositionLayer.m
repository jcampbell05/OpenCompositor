//
//  QCCompositionLayer.m
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "QCCompositionLayer.h"

#import "QCComposition.h"

@interface QCCompositionLayer ()

@property (nonatomic, strong) id timebase;
@property (nonatomic, assign) NSInteger asynchronous;

- (instancetype)initWithFile:(NSString *)file;

@end

@implementation QCCompositionLayer

- (instancetype)init
{
    self = [self initWithFile:nil];
    
    return self;
}

- (instancetype)initWithFile:(NSString *)file
{
    QCComposition *composition = [QCComposition compositionWithFile:file];
    
    self = [self initWithComposition:composition];
    
    return self;
}

- (instancetype)initWithComposition:(QCComposition *)composition
{
    self = [self initWithComposition:composition
                            andPatch:nil];
    self.delegate = self;
    
    return self;
}

- (instancetype)initWithComposition:(QCComposition *)composition
                           andPatch:(id)patch
{
    id patchToUse = patch;
    
    if (!patchToUse)
    {
        patchToUse = [self patch];
    }
    
    return [self initWithPatch:patch];
}

- (instancetype)initWithPatch:(id)patch
{
    if (!patch)
    {
        //TODO: Implement _GFThrowException
        [NSException raise:NSInternalInconsistencyException
                    format:@"Argument \"%s\" cannot be null", "patch"];
    }
    
    self = [super init];
    
    if (self)
    {
        //TODO: Figure this bit out.
        self.asynchronous = ((self.timebase != nil) ? 0x1 : 0x0) & 0xff;
    }
    
    return self;
}

- (id)patch
{
    return nil;
}

@end
