#import "xmlvm.h"
#import "java_lang_String.h"

@class org_xmlvm_iphone_UIAlertViewDelegate;


// UIAlertView
//----------------------------------------------------------------------------
typedef UIAlertView org_xmlvm_iphone_UIAlertView;
@interface UIAlertView (cat_org_xmlvm_iphone_UIAlertView)

- (void) __init_org_xmlvm_iphone_UIAlertView___java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String
             :(java_lang_String*) title
             :(java_lang_String*) message
             :(org_xmlvm_iphone_UIAlertViewDelegate*) delegate
             :(java_lang_String*) cancelButtonTitle;
             
- (void) setTitle___java_lang_String
			 :(java_lang_String*) title;

- (int) addButtonWithTitle___java_lang_String
             :(java_lang_String*) title;
@end
