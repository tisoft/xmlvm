#import "org_xmlvm_iphone_NSStringInputStream.h"

// org.xmlvm.iphone.NSStringInputStream
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSStringInputStream;

- (void) __init_org_xmlvm_iphone_NSStringInputStream___java_lang_String: (java_lang_String *) ref {
	NSString *filePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:ref];

	str = [[NSString alloc] initWithContentsOfFile:filePath];
	total = [str length];
	data = [str UTF8String];
	pos = 0;
}

- (int) read {
	data = [str UTF8String];
	return (int) data[pos++];
}

- (bool) ready {
	return (pos < total);	
}

- (java_lang_String *) readLine {
	if ([self ready] == 0) {
		return [NSNull null];
	}

	java_lang_String *ret = [[java_lang_String alloc] init];
	char c;

	while ([self ready]) {
		c = (char) [self read];
		if (c < 0) {
			break;
		}	
		if ((c == 13) || (c == 10)) {
			if ([ret length] == 0) {
				continue;
			}
			break;
		}
		ret = [ret append___char: c];
	}

	return ret;
}

@end

