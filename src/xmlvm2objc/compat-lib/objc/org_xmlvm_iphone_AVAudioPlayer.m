#import "org_xmlvm_iphone_AVAudioPlayer.h"

// AVAudioPlayer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_AVAudioPlayer;

- (void) __init_org_xmlvm_iphone_AVAudioPlayer {
}

- (void) load___java_lang_String: (java_lang_String*) ref {	
	NSString *filePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:ref];
	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: filePath];
	player = [[AVAudioPlayer alloc] initWithContentsOfURL: fileURL error: nil];
	[player prepareToPlay];
	[player setVolume: 1.0];
}

- (void) playSound {
	[player play];
}

@end
