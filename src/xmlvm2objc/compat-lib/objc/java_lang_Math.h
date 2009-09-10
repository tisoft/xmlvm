#import "xmlvm.h"
#import "java_lang_Object.h"

// java.lang.Math
//----------------------------------------------------------------------------
@interface java_lang_Math : java_lang_Object

+ (double) random;
+ (double) sqrt___double: (double) x;
+ (double) asin___double: (double) x;
+ (double) sin___double: (double) a;
+ (double) cos___double: (double) a;
+ (double) tan___double: (double) a;
+ (double) atan2___double_double: (double) y :(double) x;
+ (int) abs___int: (int) i;
+ (float) abs___float: (float) f;
+ (float) max___float_float :(float) x :(float) y;
+ (int) max___int_int :(int) x :(int) y;
+ (int) min___int_int :(int) x :(int) y;
@end

