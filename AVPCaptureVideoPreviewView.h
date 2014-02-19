//
//  AVPCaptureVideoPreviewView.h
//  PhotoMatcher
//
//  Created by Maximilian Christ on 3/4/13.
//  Copyright (c) 2013 Maximilian Christ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AVPCaptureVideoPreviewView : UIView

@property (nonatomic, readonly, retain) AVCaptureVideoPreviewLayer* layer;

@property (nonatomic, strong) AVCaptureSession* session;

@property (nonatomic, strong) NSString* videoGravity;

@end
