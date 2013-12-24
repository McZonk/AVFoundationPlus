//
//  AVCaptureDevice+DeviceWithProperties.h
//  Plus
//
//  Created by Maximilian Christ on 6/26/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

extern NSString* const AVPCaptureDeviceMediaTypeProperty;
extern NSString* const AVPCaptureDevicePositionProperty;


@interface AVCaptureDevice (AVPDeviceWithProperties)

+ (AVCaptureDevice*)deviceWithProperties:(NSDictionary*)dictionary;

@end
