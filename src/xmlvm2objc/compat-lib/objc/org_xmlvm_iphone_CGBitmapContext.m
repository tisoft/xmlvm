#import "org_xmlvm_iphone_CGBitmapContext.h"

// CGBitmapContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGBitmapContext;

+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int_org_xmlvm_iphone_CGImage :(int) width :(int) height :(org_xmlvm_iphone_CGImage*) image
{		
	org_xmlvm_iphone_CGBitmapContext* retval = [[org_xmlvm_iphone_CGBitmapContext alloc] init];

	retval->data = (unsigned char *) malloc(width * height * 4);
	retval->context = CGBitmapContextCreate(retval->data, width, height, 8, width * 4, CGImageGetColorSpace(image->image), kCGImageAlphaPremultipliedLast);

	return retval;	
}

+ (org_xmlvm_iphone_CGBitmapContext*) createWithSize___int_int :(int) width :(int) height 
{		
	org_xmlvm_iphone_CGBitmapContext* retval = [[org_xmlvm_iphone_CGBitmapContext alloc] init];

	retval->data = (unsigned char *) malloc(width * height * 4);
	retval->context = CGBitmapContextCreate(retval->data, width, height, 8, width * 4, CGColorSpaceCreateDeviceRGB(), kCGImageAlphaPremultipliedLast);

	return retval;	
}

- (java_nio_ByteBuffer *) getData
{
	java_nio_ByteBuffer* retval = [[java_nio_ByteBuffer alloc] init];
	retval->data = data;

	return retval;
}

- (void) release
{
	free(data);
	CGContextRelease(context);
}

@end


