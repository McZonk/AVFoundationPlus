//
//  AVCaptureDevice+AVPAdjusting.h
//  Plus
//
//  Created by Maximilian Christ on 4/17/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>

@interface AVCaptureDevice (AVPAdjusting)

/**
 * @return true when the device is adjusting a property, otherwise false. Properties are focus, exposure and white balance.
 */
@property(nonatomic, readonly, getter=isAdjusting) BOOL adjusting;

@end
