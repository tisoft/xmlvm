#import "java_io_PrintStream.h"

// java.io.PrintStream
//----------------------------------------------------------------------------
@implementation java_io_PrintStream;

- (void) println___int: (int) i
{
    printf("%d\n", i);
}


- (void) println___float: (float) f
{
    printf("%f\n", f);
}


- (void) println___double: (double) d
{
    printf("%lf\n", d);
}


- (void) println___java_lang_String: (NSString*) s
{
    printf("%s\n", [s cString]);
}


@end

