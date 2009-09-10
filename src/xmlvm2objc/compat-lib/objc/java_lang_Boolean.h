#import "xmlvm.h"
#import "java_lang_Object.h"


// java.lang.Boolean
//----------------------------------------------------------------------------
@interface java_lang_Boolean : java_lang_Object {

int value;

}

- (id) init;
- (NSUInteger) hash;
- (void) __init_java_lang_Boolean___int :(int) i;
- (void) __init_java_lang_Boolean___boolean :(BOOL) b;
- (BOOL)isEqual:(id)anObject;
- (int) booleanValue;

@end
