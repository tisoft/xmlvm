#import "xmlvm.h"
#import "org_xmlvm_iphone_CGDataProvider.h"
#import <CoreGraphics/CGFont.h>

// CGFont
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGFont : java_lang_Object {
@public CGFontRef font;
}
+ (org_xmlvm_iphone_CGFont*) createFromDataProider___org_xmlvm_iphone_CGDataProvider :(org_xmlvm_iphone_CGDataProvider*)provider;
- (int) getUnitsPerEm;
- (int) getAscent;
- (int) getDescent;
@end
