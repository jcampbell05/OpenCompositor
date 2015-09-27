//
//  QCView.m
//  QuartzMobile
//
//  Created by James Campbell on 25/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "QCView.h"

#import "QCCompositionLayer.h"

@implementation QCView

+ (Class)layerClass
{
    return [QCCompositionLayer class];
}
//
//void * -[QCView initWithFrame:optionFlags:](void * self, void * _cmd, struct CGRect arg2, unsigned long long arg3) {
//    r14 = arg2;
//    r15 = _cmd;
//    var_30 = *___stack_chk_guard;
//    stack[2048] = arg_0;
//    r12 = [[self super] initWithFrame:rdx, arg3];
//    if (r12 != 0x0) {
//        rax = NSAllocateCollectable(0x190, 0x1);
//        objc_assign_ivar(rax, r12, *_OBJC_IVAR_$_QCView._QCViewPrivate);
//        rdi = r12->_QCViewPrivate;
//        if (rdi == 0x0) {
//            rdx = *_NSInvalidArgumentException;
//            _GFThrowException(r12, r15, rdx, @"Memory allocation for private structure failed", r8, r9, stack[2048]);
//            rdi = r12->_QCViewPrivate;
//        }
//        __bzero(rdi, 0x190);
//        r14 = r14 | *__defaultOptionFlags;
//        r15 = *(r12 + _objc_msgSend);
//        *(r15 + 0x20) = r14;
//        [r12 setEraseColor:0x0];
//        [r12 setBackgroundColor:0x0];
//        [r12 _finishInitialization];
//        [r12 _reconfigure];
//        pthread_mutexattr_init(var_40);
//        pthread_mutexattr_settype(var_40, 0x2);
//        pthread_mutex_init(r15 - 0xffffffffffffff80, var_40);
//        pthread_mutexattr_destroy(var_40);
//        __snprintf_chk(var_80, 0x40, 0x0, 0x40, "QCViewAsyncRenderer:%p", r12);
//        rax = dispatch_queue_create(var_80, 0x0);
//        *(r15 + 0xc0) = rax;
//        rdx = 0x0;
//        rax = dispatch_source_create(__dispatch_source_type_timer, 0x0, rdx, rax);
//        *(r15 + 0xc8) = rax;
//        rax = dispatch_retain(rax);
//        rdi = *(r15 + 0xc8);
//        xmm0 = intrinsic_movss(xmm0, *(int32_t *)(r15 + 0x18));
//        xmm1 = 0x0;
//        xmm0 = intrinsic_ucomiss(xmm0, xmm1);
//        COND = xmm0 != 0x0;
//        if ((!COND) && (CPU_FLAGS & NP)) {
//            rax = *(int8_t *)(r15 + 0x20);
//            rax = rax & 0x8 & 0xff;
//            xmm0 = intrinsic_movsd(xmm0, *(rax + 0x4fa9d0));
//        }
//        else {
//            xmm0 = intrinsic_cvtss2sd(xmm0, xmm0);
//        }
//        xmm1 = intrinsic_movsd(xmm1, *0x4f94a8);
//        xmm1 = intrinsic_divsd(xmm1, xmm0);
//        xmm1 = intrinsic_mulsd(xmm1, *0x4fa990);
//        xmm0 = intrinsic_movsd(xmm0, *0x4f9d30);
//        rax = intrinsic_cvttsd2si(rax, intrinsic_subsd(intrinsic_movaps(xmm2, xmm1), xmm0));
//        rdx = intrinsic_cvttsd2si(rdx, xmm1);
//        xmm1 = intrinsic_ucomisd(xmm1, xmm0);
//        asm{ cmovae     rdx, rcx };
//        dispatch_source_set_timer(rdi, 0x0, rdx, 0x0);
//        rdi = *(r15 + 0xc8);
//        dispatch_source_set_event_handler(rdi, __NSConcreteStackBlock);
//        if ([r12 class] == [QCView class]) {
//            [r12 setAsynchronous:0x1];
//        }
//        _Block_object_dispose(0x0, 0x8);
//    }
//    if (*___stack_chk_guard == var_30) {
//        rax = r12;
//    }
//    else {
//        rax = __stack_chk_fail();
//    }
//    return rax;
//}

//int ___36-[QCView initWithFrame:optionFlags:]_block_invoke(int arg0) {
//    rdi = *(*(*(arg0 + 0x20) + 0x8) + 0x28);
//    rax = [rdi _renderTimer];
//    return rax;
//}

@end
