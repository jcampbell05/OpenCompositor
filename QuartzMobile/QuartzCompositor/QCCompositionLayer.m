//
//  QCCompositionLayer.m
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "QCCompositionLayer.h"

@interface QCCompositionLayer ()

@property (nonatomic, strong) id privateLayer;

@end

@implementation QCCompositionLayer

- (instancetype)initWithComposition:(QCComposition *)composition
{
    self = [self initWithComposition:composition
                            andPatch:nil];
    
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
    
    if (patchToUse)
    {
        self = [self initWithPatch:patch];
        
        if (self)
        {
            self = self.privateLayer;
        }
    }
    
    return self;
}

- (instancetype)initWithPatch:(id)patch
{
//    void * -[QCCompositionLayer initWithPatch:](void * self, void * _cmd, void * arg2) {
//        r14 = arg2;
//        r15 = _cmd;
//        rbx = self;
//        if (r14 == 0x0) {
//            rdx = *_NSGenericException;
//            r8 = "patch";
//            _GFThrowException(rbx, r15, rdx, @"Argument \"%s\" cannot be null", r8, r9, stack[2048]);
//        }
//        r12 = [[rbx super] init];
//        if (r12 != 0x0) {
//            rax = NSAllocateCollectable(0x90, 0x1);
//            rbx = *_OBJC_IVAR_$_QCCompositionLayer._QCCompositionLayerPrivate;
//            objc_assign_ivar(rax, r12, rbx);
//            rdi = *(r12 + rbx);
//            if (rdi == 0x0) {
//                rdx = *_NSInvalidArgumentException;
//                _GFThrowException(r12, r15, rdx, @"Memory allocation for private structure failed", r8, r9, stack[2048]);
//                rbx = *_OBJC_IVAR_$_QCCompositionLayer._QCCompositionLayerPrivate;
//                rdi = *(r12 + rbx);
//            }
//            __bzero(rdi, 0x90);
//            rbx = *(r12 + rbx);
//            rax = [r14 retain];
//            objc_assign_strongCast(rax, rbx + 0x8);
//            *(int128_t *)(rbx + 0x70) = intrinsic_movups(*(int128_t *)(rbx + 0x70), intrinsic_movaps(xmm0, *(int128_t *)0x4fb830));
//            [r12 _finishInitialization];
//        }
//        rax = r12;
//        return rax;
//    }
    
    return nil;
}

- (id)patch
{
    return nil;
}

@end
