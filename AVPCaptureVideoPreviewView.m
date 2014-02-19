//
//  AVPCaptureVideoPreviewView.m
//  PhotoMatcher
//
//  Created by Maximilian Christ on 3/4/13.
//  Copyright (c) 2013 Maximilian Christ. All rights reserved.
//

#import "AVPCaptureVideoPreviewView.h"

@implementation AVPCaptureVideoPreviewView

+ (Class)layerClass {
	return [AVCaptureVideoPreviewLayer class];
}

@dynamic layer;

- (AVCaptureSession*)session {
	return self.layer.session;
}

- (void)setSession:(AVCaptureSession*)session {
	self.layer.session = session;
}

- (NSString*)videoGravity
{
	return self.layer.videoGravity;
}

- (void)setVideoGravity:(NSString*)videoGravity
{
	self.layer.videoGravity = videoGravity;
}

@end
