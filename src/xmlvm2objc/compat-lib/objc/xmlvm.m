
#import "xmlvm.h"


// java.lang.null
//----------------------------------------------------------------------------
NSObject* _STATIC_NULL;

@implementation java_lang_null;

+ (void) initialize
{
    _STATIC_NULL = [[[NSObject alloc] init] autorelease];
}

+ (NSObject*) _GET_NULL
{
	// Usually we don't do a retain in getters, but NULL is different
	[_STATIC_NULL retain];
    return _STATIC_NULL;
}

@end