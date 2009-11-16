
/** @author teras */

#import "xmlvm.h"

#include "org_xmlvm_iphone_UIImage.h"
#include "java_lang_String.h"
#include "org_xmlvm_iphone_UIEdgeInsets.h"

typedef UIBarItem org_xmlvm_iphone_UIBarItem;

@interface UIBarItem (cat_org_xmlvm_iphone_UIBarItem)

- (void) __init_org_xmlvm_iphone_UIBarItem__;
- (int) isEnabled__;
- (void) setEnabled___boolean :(int)n1;
- (org_xmlvm_iphone_UIImage*) getImage__;
- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1;
- (org_xmlvm_iphone_UIEdgeInsets*) getImageInsets__;
- (void) setImageInsets___org_xmlvm_iphone_UIEdgeInsets :(org_xmlvm_iphone_UIEdgeInsets*)n1;
- (java_lang_String*) getTitle__;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (int) getTag__;
- (void) setTag___int :(int)n1;

@end

