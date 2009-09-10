#import "xmlvm.h"
#import "java_lang_Object.h"


// java.util.Random
//----------------------------------------------------------------------------
@interface java_util_Random : java_lang_Object {
}

- (double) nextDouble;
- (void) __init_java_util_Random;
- (void) __init_java_util_Random___int :(int) seed;
- (void) __init_java_util_Random___long :(long) seed;

@end
