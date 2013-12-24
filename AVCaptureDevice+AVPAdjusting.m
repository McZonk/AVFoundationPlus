//
//  AVCaptureDevice+AVPAdjusting.m
//  Plus
//
//  Created by Maximilian Christ on 4/17/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "AVCaptureDevice+AVPAdjusting.h"

@implementation AVCaptureDevice (AVPAdjusting)

- (BOOL)isAdjusting
{
	return self.isAdjustingFocus || self.isAdjustingExposure || self.isAdjustingWhiteBalance;
}

@end
