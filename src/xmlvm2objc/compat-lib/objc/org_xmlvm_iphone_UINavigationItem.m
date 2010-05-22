/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 *
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import "org_xmlvm_iphone_UINavigationItem.h"

/** @author teras */

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
	[self setLeftBarButtonItem:XMLVM_VALUE(n1)];
}

- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)but :(int)anim { 
	[self setLeftBarButtonItem:XMLVM_VALUE(but) animated:anim];
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
	[self setRightBarButtonItem:XMLVM_VALUE(n1)];
}

- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)but :(int)anim { 
	[self setRightBarButtonItem:XMLVM_VALUE(but) animated:anim];
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

