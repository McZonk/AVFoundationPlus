//
//  AVCaptureDevice+DeviceWithProperties.m
//  Plus
//
//  Created by Maximilian Christ on 6/26/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "AVCaptureDevice+AVPDeviceWithProperties.h"


NSString* const AVPCaptureDeviceMediaTypeProperty = @"AVPCaptureDeviceMediaTypeProperty";
NSString* const AVPCaptureDevicePositionProperty = @"AVPCaptureDevicePositionProperty";


@implementation AVCaptureDevice (AVPDeviceWithProperties)

+ (AVCaptureDevice*)deviceWithProperties:(NSDictionary*)properties {
	NSString* mediaType = [properties objectForKey:AVPCaptureDeviceMediaTypeProperty];
	if(mediaType && ![mediaType isKindOfClass:[NSString class]]) {
		mediaType = nil;
	}

	NSNumber* position = [properties objectForKey:AVPCaptureDevicePositionProperty];
	if(position && ![position isKindOfClass:[NSNumber class]]) {
		position = nil;
	}
	
	NSArray* devices = self.devices;
	for(AVCaptureDevice* device in devices) {
		if(mediaType && ![device hasMediaType:mediaType]) {
			continue;
		}
		
		if(position && device.position != position.integerValue) {
			continue;
		}
		
		return device;
	}

	return nil;
}

@end
