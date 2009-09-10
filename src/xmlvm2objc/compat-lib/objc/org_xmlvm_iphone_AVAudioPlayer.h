#import "xmlvm.h"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "java_lang_Object.h"
#import "java_lang_String.h"

// CGDataProvider
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_AVAudioPlayer : java_lang_Object {
AVAudioPlayer *player;
}
- (void) __init_org_xmlvm_iphone_AVAudioPlayer;
- (void) load___java_lang_String: (java_lang_String*) ref;
- (void) playSound;
@end
