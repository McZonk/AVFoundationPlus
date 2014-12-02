#import <AVFoundation/AVFoundation.h>

@interface AVAssetWriter (AVPFileSize)

/**
 * Calculates the size of the file that outputURL is pointing at using fstat.
 * AVMovieCaptureFileOutput is using the same mechanism.
 * Break at FigFileForkGetLengthAtOffset in CoreMedia.framework.
 */
- (NSNumber *)fileSize;

@end
