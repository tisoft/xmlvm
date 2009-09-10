#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

@interface java_io_InputStream : java_lang_Object 
- (int) read;
- (bool) ready;
- (java_lang_String *) readLine;
@end
