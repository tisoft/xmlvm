
#import "xmlvm.h"


// java.lang.null
//----------------------------------------------------------------------------
NSObject* _STATIC_NULL;

@implementation java_lang_null;

+ (void) initialize
{
    _STATIC_NULL = [[NSObject alloc] init];
}

- (NSUInteger) retainCount
{
	// UINT_MAX indicates that this instance is immortal
	return UINT_MAX;
}

+ (NSObject*) _GET_NULL
{
    return _STATIC_NULL;
}

@end