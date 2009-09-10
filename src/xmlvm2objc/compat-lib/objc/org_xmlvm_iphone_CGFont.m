#import "org_xmlvm_iphone_CGFont.h"

// CGFont
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGFont;

+ (org_xmlvm_iphone_CGFont*) createFromDataProider___org_xmlvm_iphone_CGDataProvider :(org_xmlvm_iphone_CGDataProvider*)provider;
{
	org_xmlvm_iphone_CGFont *toRet = [[org_xmlvm_iphone_CGFont alloc] init];
	toRet->font = CGFontCreateWithDataProvider(provider->provider);

	CFStringRef fullName = CGFontCopyFullName(toRet->font);
	char cstr[1000];
	CFStringGetCString(fullName, cstr, 1000, kCFStringEncodingUTF8);
	printf("Loaded font: %s %p from %p\n",cstr,toRet->font,provider->provider);
	CGDataProviderRelease(provider->provider);	
	printf("Done\n");
	return toRet;
}

- (int) getUnitsPerEm
{
	return CGFontGetUnitsPerEm(font);
}

- (int) getAscent
{
	return CGFontGetAscent(font);
}

- (int) getDescent
{
	return CGFontGetDescent(font);
}

@end
