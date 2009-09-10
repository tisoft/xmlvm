#import "xmlvm.h"
#import "java_io_InputStream.h"
#import "java_lang_String.h"

@interface org_xmlvm_iphone_NSStringInputStream : java_io_InputStream {
	NSString *str;
	char *data;
	int pos;
	int total;
}

- (void) __init_org_xmlvm_iphone_NSStringInputStream___java_lang_String: (java_lang_String *) ref;
- (int) read;
- (bool) ready;
- (java_lang_String *) readLine;

@end
