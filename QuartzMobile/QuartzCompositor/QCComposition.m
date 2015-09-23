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

NSString * const QCCompositionProtocolImageFilter = @"com.apple.QuartzComposer.protocol.image-filter";

@interface QCComposition ()

@property (nonatomic, strong) id backing;

@property (nonatomic, strong) NSDictionary *attributes;
@property (nonatomic, strong) NSString *identifier;

@property (nonatomic, strong) NSArray *inputKeys;
@property (nonatomic, strong) NSArray *outputKeys;
@property (nonatomic, strong) NSArray *protocols;

@end

@implementation QCComposition

+ (void)initialize
{
    [GFNodeManager lock];
    [QCImage class];
    [GFNodeManager unlock];
}

+ (instancetype)compositionWithFile:(NSString *)path;
{
    if ([path length] == 0)
    {
        //TODO: Implement _GFThrowException
        [NSException raise:NSInternalInconsistencyException
                    format:@"String argument \"%s\" cannot be empty", "path"];
    }
    
    QCComposition *composition = [[QCComposition alloc] initWithBacking:path];
    return composition;
}

+ (instancetype)compositionWithData:(NSData *)data
{
    if (!data)
    {
        //TODO: Implement _GFThrowException
        [NSException raise:NSInternalInconsistencyException
                    format:@"Argument \"%s\" cannot be null", "data"];
    }
    
    QCComposition *composition = [[QCComposition alloc] initWithBacking:data];
    return composition;
}

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        self.identifier = @"";
        
        self.protocols = @[QCCompositionProtocolImageFilter];
        
        //TODO: Implement __GetLocalizedString
        self.attributes = @{NSLocalizedString(@"Original", nil): [NSNull null]};
        
        if (!self.attributes)
        {
            //TODO: Implement _GFThrowException
            [NSException raise:NSInternalInconsistencyException
                        format:@"Object creation failed"];
        }
        
        self.inputKeys = @[@"_protocolInput_Image"];
        self.outputKeys = @[@"_protocolOutput_Image"];
    }
    
    return self;
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
