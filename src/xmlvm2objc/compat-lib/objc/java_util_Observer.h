
#import "xmlvm.h"
#import "java_lang_Object.h"

@class java_util_Observable;


// java.util.Observer
//----------------------------------------------------------------------------
@protocol java_util_Observer <NSObject>
- (void) update___java_util_Observable_java_lang_Object: (java_util_Observable*) o : (java_lang_Object*) arg;
@end

@interface java_util_Observer : java_lang_Object <java_util_Observer>
@end
