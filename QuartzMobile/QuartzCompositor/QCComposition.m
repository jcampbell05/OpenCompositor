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
        //TODO:
        //        rax = [NSArray alloc];
        //        rax = [rax initWithObjects:_QCCompositionProtocolImageFilter count:0x1];
        //        objc_assign_ivar(rax, r12, *_OBJC_IVAR_$_QCComposition._protocols);
        //        r15 = [NSDictionary alloc];
        //        rdx = __GetLocalizedString(@"Original", 0x0);
        //        rax = [r15 initWithObjectsAndKeys:rdx];
        //        rcx = _OBJC_IVAR_$_QCComposition._attributes;
        //        rbx = *rcx;
        //        rdx = rbx;
        //        objc_assign_ivar(rax, r12, rdx);
        //        if (*(r12 + rbx) == 0x0) {
        //            rdx = *_NSGenericException;
        //            rcx = @"Object creation failed";
        //            _GFThrowException(r12, r14, rdx, rcx, 0x0, r9, stack[2048]);
        //        }
        //        rax = [NSArray alloc];
        //        rax = [rax initWithObjects:@"_protocolInput_Image" count:0x1, 0x0];
        //        objc_assign_ivar(rax, r12, *_OBJC_IVAR_$_QCComposition._inputKeys);
        //        rax = [NSArray alloc];
        //        rax = [rax initWithObjects:@"_protocolOutput_Image" count:0x1, 0x0];
        //        objc_assign_ivar(rax, r12, *_OBJC_IVAR_$_QCComposition._outputKeys);
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
