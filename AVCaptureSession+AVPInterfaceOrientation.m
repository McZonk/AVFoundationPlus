//
//  AVCaptureSession+AVPInterfaceOrientation.m
//  PhotoMatcher
//
//  Created by Maximilian Christ on 3/5/13.
//  Copyright (c) 2013 Maximilian Christ. All rights reserved.
//

#import "AVCaptureSession+AVPInterfaceOrientation.h"

@implementation AVCaptureSession (AVPInterfaceOrientation)

+ (AVCaptureVideoOrientation)videoOrientationForInterfaceOrientation:(UIInterfaceOrientation)interfaceOriention {
	switch(interfaceOriention) {
		case UIInterfaceOrientationPortraitUpsideDown :
			return AVCaptureVideoOrientationPortraitUpsideDown;
		case UIInterfaceOrientationLandscapeLeft :
			return AVCaptureVideoOrientationLandscapeLeft;
		case UIInterfaceOrientationLandscapeRight :
			return AVCaptureVideoOrientationLandscapeRight;
		default:
			return AVCaptureVideoOrientationPortrait;
	}
}

+ (UIInterfaceOrientation)interfaceOrientationForVideoOrientation:(AVCaptureVideoOrientation)videoOrientation {
	switch(videoOrientation) {
		case AVCaptureVideoOrientationPortraitUpsideDown :
			return UIInterfaceOrientationPortraitUpsideDown;
		case AVCaptureVideoOrientationLandscapeLeft :
			return UIInterfaceOrientationLandscapeLeft;
		case AVCaptureVideoOrientationLandscapeRight :
			return UIInterfaceOrientationLandscapeRight;
		default:
			return UIInterfaceOrientationPortrait;
	}
}

@end
