#import "org_xmlvm_iphone_UIAlertView.h"

// UIAlertView
//----------------------------------------------------------------------------
@implementation UIAlertView (cat_org_xmlvm_iphone_UIAlertView)

- (void) __init_org_xmlvm_iphone_UIAlertView___java_lang_String_java_lang_String_java_lang_Object_java_lang_String
             :(java_lang_String*) title
             :(java_lang_String*) message
             :(java_lang_Object*) delegate
             :(java_lang_String*) cancelButtonTitle
{
	[self initWithTitle:title message:message delegate:nil cancelButtonTitle:cancelButtonTitle otherButtonTitles: nil];
}
             
@end
