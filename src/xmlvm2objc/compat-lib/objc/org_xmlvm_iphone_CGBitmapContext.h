#import "xmlvm.h"
#include "org_xmlvm_iphone_CGContext.h"
#include "java_lang_Object.h"
#include "java_nio_ByteBuffer.h"

// org_xmlvm_iphone_CGBitmapContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGBitmapContext : org_xmlvm_iphone_CGContext {
	@public unsigned char *data;
}

+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int_org_xmlvm_iphone_CGImage :(int) width :(int) height :(org_xmlvm_iphone_CGImage*) image;
+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int :(int) width :(int) height;
- (java_nio_ByteBuffer*) getData;
- (void) release;

@end
