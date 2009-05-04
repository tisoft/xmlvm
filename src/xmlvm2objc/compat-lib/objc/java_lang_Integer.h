#import "xmlvm.h"
#import "java_lang_Object.h"


// java.lang.Integer
//----------------------------------------------------------------------------
@interface java_lang_Integer : java_lang_Object {

int number;

}

- (id) init;
- (id) copyWithZone:(NSZone *)zone;
- (NSUInteger) hash;
- (void) __init_java_lang_Integer___int :(int) i;
- (BOOL)isEqual:(id)anObject;

@end