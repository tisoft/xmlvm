#import "xmlvm.h"
#import <CoreGraphics/CGDataProvider.h>
#import "java_lang_Object.h"

// CGDataProvider
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGDataProvider : java_lang_Object {
@public CGDataProviderRef provider;
}
+ (org_xmlvm_iphone_CGDataProvider*) providerToPath___java_lang_String :(NSString*)n1;
@end
