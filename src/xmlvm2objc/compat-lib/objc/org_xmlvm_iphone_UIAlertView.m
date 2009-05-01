#import "org_xmlvm_iphone_UIAlertView.h"

// UIAlertView
//----------------------------------------------------------------------------
@implementation UIAlertView (cat_org_xmlvm_iphone_UIAlertView)

- (void) __init_org_xmlvm_iphone_UIAlertView___java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String
             :(java_lang_String*) title
             :(java_lang_String*) message
             :(org_xmlvm_iphone_UIAlertViewDelegate*) delegate
             :(java_lang_String*) cancelButtonTitle
{
	// TODO We have to retain the delegate in case it was instantiated via
	// an anonymous class (in that case the instance would be cleaned up
	// by the autorelease pool). However, when do we delete the delegate?
	// We would need to save the delegate in a member which we can't do as
	// long as UIAlertView is a category. Perhaps the UIAlertView cleans up?
	[delegate retain];
	[self initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles: nil];
}

- (void) setTitle___java_lang_String
			 :(java_lang_String*) title;
{
	self.title = title;
}

- (int) addButtonWithTitle___java_lang_String
             :(java_lang_String*) title;
{
	return [self addButtonWithTitle:title];
}
             
@end
