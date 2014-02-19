//
//  AVCaptureSession+AVPDeviceOrientation.m
//  PartySnapper
//
//  Created by Maximilian Christ on 4/20/13.
//  Copyright (c) 2013 Boinx Software. All rights reserved.
//

#import "AVCaptureSession+AVPDeviceOrientation.h"

@implementation AVCaptureSession (AVPDeviceOrientation)

+ (AVCaptureVideoOrientation)videoOrientationForDeviceOrientation:(UIDeviceOrientation)deviceOrientation
{
	switch(deviceOrientation)
	{
		case UIDeviceOrientationPortrait :
			return AVCaptureVideoOrientationPortrait;
		case UIDeviceOrientationPortraitUpsideDown :
			return AVCaptureVideoOrientationPortraitUpsideDown;
		case UIDeviceOrientationLandscapeLeft :
			return AVCaptureVideoOrientationLandscapeRight;
		case UIDeviceOrientationLandscapeRight :
			return AVCaptureVideoOrientationLandscapeLeft;
		default:
			return AVCaptureVideoOrientationPortrait;
	}
}

@end
