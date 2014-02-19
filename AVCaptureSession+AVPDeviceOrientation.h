//
//  AVCaptureSession+AVPDeviceOrientation.h
//  PartySnapper
//
//  Created by Maximilian Christ on 4/20/13.
//  Copyright (c) 2013 Boinx Software. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

#import <UIKit/UIApplication.h>


@interface AVCaptureSession (AVPDeviceOrientation)

+ (AVCaptureVideoOrientation)videoOrientationForDeviceOrientation:(UIDeviceOrientation)deviceOriention;

@end
