#import "java_io_PrintStream.h"

// java.io.PrintStream
//----------------------------------------------------------------------------
@implementation java_io_PrintStream;

- (void) println___int: (int) i
{
    NSLog(@"d", i);
}


- (void) println___float: (float) f
{
    NSLog(@"%f", f);
}


- (void) println___double: (double) d
{
    NSLog(@"%lf", d);
}


- (void) println___java_lang_String: (NSString*) s
{
    NSLog(s);
}


@end

