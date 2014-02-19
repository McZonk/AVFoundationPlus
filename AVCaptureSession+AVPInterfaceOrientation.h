//
//  AVCaptureSession+AVPInterfaceOrientation.h
//  PhotoMatcher
//
//  Created by Maximilian Christ on 3/5/13.
//  Copyright (c) 2013 Maximilian Christ. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

#import <UIKit/UIApplication.h>


@interface AVCaptureSession (AVPInterfaceOrientation)

+ (AVCaptureVideoOrientation)videoOrientationForInterfaceOrientation:(UIInterfaceOrientation)interfaceOriention;

@end
