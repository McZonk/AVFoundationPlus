#import "AVAssetWriter+AVPFileSize.h"

#import <objc/runtime.h>

#include <pthread/pthread.h>
#include <sys/stat.h>


@implementation AVAssetWriter (AVPFileSize)

- (NSNumber *)fileSize
{
	static pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
	
	static const void * const fileHandlekey = &fileHandlekey;
	
	pthread_mutex_lock(&mutex);
	
	NSFileHandle *fileHandle = objc_getAssociatedObject(self, fileHandlekey);
	if(fileHandle == nil)
	{
		NSURL *URL = self.outputURL;
		
		int fileDescriptor = open(URL.path.fileSystemRepresentation, 0);
		if(fileDescriptor > 0)
		{
			fileHandle = [[NSFileHandle alloc] initWithFileDescriptor:fileDescriptor closeOnDealloc:YES];
			if(fileHandle != nil)
			{
				objc_setAssociatedObject(self, fileHandlekey, fileHandle, OBJC_ASSOCIATION_RETAIN);
			}
		}
	}
	
	pthread_mutex_unlock(&mutex);
	
	NSNumber *fileSize = nil;
	
	int fileDescriptor = fileHandle.fileDescriptor;
	if(fileDescriptor > 0)
	{
		struct stat s;
		if(fstat(fileDescriptor, &s) == 0)
		{
			fileSize = @(s.st_size);
		}
	}
	
	return fileSize;
}

@end
