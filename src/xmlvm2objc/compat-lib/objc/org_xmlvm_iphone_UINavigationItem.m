/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "org_xmlvm_iphone_UINavigationItem.h"



@implementation UINavigationItem (cat_org_xmlvm_iphone_UINavigationItem)

- (void) __init_org_xmlvm_iphone_UINavigationItem___java_lang_String :(java_lang_String*)n1 { 
	[self setTitle:n1];
}


- (org_xmlvm_iphone_UIBarButtonItem*) getBackBarButtonItem__ {
	return_XMLVM(backBarButtonItem)
}

- (void) setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1 { 
	self.backBarButtonItem = n1;
}

- (int) hidesBackButton__ { 
	return self.hidesBackButton;
}

- (void) setHidesBackButton___boolean :(int)n1 { 
	self.hidesBackButton = n1;
}

- (void) setHidesBackButton___boolean_boolean :(int)but :(int)anim { 
	[self setHidesBackButton:but animated:anim];
}

- (org_xmlvm_iphone_UIBarButtonItem*) getLeftBarButtonItem__ { 
	return_XMLVM(leftBarButtonItem)
}

- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1 { 
	[self setLeftBarButtonItem:XMLVM_NULL2NIL(n1)];
}

- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)but :(int)anim { 
	[self setLeftBarButtonItem:XMLVM_NULL2NIL(but) animated:anim];
}

- (java_lang_String*) getPrompt__ {
	return_XMLVM(prompt)
}

- (void) setPrompt___java_lang_String :(java_lang_String*)n1 { 
    self.prompt = n1;
}

- (org_xmlvm_iphone_UIBarButtonItem*) getRightBarButtonItem__ {
	return_XMLVM(rightBarButtonItem)
}

- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1 { 
	[self setRightBarButtonItem:XMLVM_NULL2NIL(n1)];
}

- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)but :(int)anim { 
	[self setRightBarButtonItem:XMLVM_NULL2NIL(but) animated:anim];
}

- (java_lang_String*) getTitle__ { 
	return_XMLVM(title)
}

- (void) setTitle___java_lang_String :(java_lang_String*)n1 { 
	self.title = n1;
}

- (org_xmlvm_iphone_UIView*) getTitleView__ { 
	return_XMLVM(titleView)
}

- (void) setTitleView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 { 
	self.titleView = n1;
}



@end

