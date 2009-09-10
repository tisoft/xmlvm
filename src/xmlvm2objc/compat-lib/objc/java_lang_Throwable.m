
#import "java_lang_Throwable.h"

// java.lang.Throwable
//----------------------------------------------------------------------------
@implementation java_lang_Throwable

- (id) init
{
    return [self initWithName: @"java_lang_Throwable" reason: nil userInfo: nil];
}

- (void) __init_java_lang_Throwable
{
    // Do nothing
}

- (NSString *) getMessage
{
	NSString* reason = [self reason];
	[reason retain];
    return reason;
}

- (NSString *) toString
{
	NSString* name = [self name];
	[name retain];
    return name;
}

- (void) printStackTrace
{
}
@end
