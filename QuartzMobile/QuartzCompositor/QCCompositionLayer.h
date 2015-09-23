//
//  QCCompositionLayer.h
//  QuartzMobile
//
//  Created by James Campbell on 23/09/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "QCComposition.h"

//TODO: Mac Support
@interface QCCompositionLayer : CAEAGLLayer

- (instancetype)initWithComposition:(QCComposition *)composition;

@end
