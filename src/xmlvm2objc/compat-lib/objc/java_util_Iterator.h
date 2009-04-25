#import "xmlvm.h"
#import "java_lang_Object.h"


// java.util.Iterator
//----------------------------------------------------------------------------
@interface java_util_Iterator : java_lang_Object {

NSEnumerator* enumerator;
id nextObj;

}

- (id) init :(NSEnumerator*) e;
- (bool) hasNext;
- (java_lang_Object*) next;

@end