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

#import "org_xmlvm_iphone_UIBarButtonItem.h"

/** @author teras */

@implementation  UIBarButtonItem (cat_org_xmlvm_iphone_UIBarButtonItem)

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIImage_int_org_xmlvm_iphone_UIBarButtonItemDelegate :(org_xmlvm_iphone_UIImage*) image :(int)style :(org_xmlvm_iphone_UIBarButtonItemDelegate*) itemDelegate
{
	// TODO: is there any way to avoid the init selector?
	if (itemDelegate == JAVA_NULL) {
		[self initWithImage:image style:style target:nil action:nil];
	} else {
		// TODO : Have a look at UIAlertView comments
		[itemDelegate retain];
		[self initWithImage:image style:style target:itemDelegate action:@selector(clicked__)];
	}
}

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)customView
{
	// TODO: is there any way to avoid the init selector?
	[self initWithCustomView:customView];
}

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___int_org_xmlvm_iphone_UIBarButtonItemDelegate :(int) systemItem :(org_xmlvm_iphone_UIBarButtonItemDelegate*) itemDelegate
{
	if (itemDelegate == JAVA_NULL) {
		[self initWithBarButtonSystemItem:systemItem target:nil action:nil];
	} else {
		// TODO : Have a look at UIAlertView comments
		[itemDelegate retain];
		[self initWithBarButtonSystemItem:systemItem target:itemDelegate action:@selector(clicked__)];
	}
}

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___java_lang_String_int_org_xmlvm_iphone_UIBarButtonItemDelegate :(java_lang_String*)title :(int)style :(org_xmlvm_iphone_UIBarButtonItemDelegate*)itemDelegate {
	if (itemDelegate == JAVA_NULL) {
		[self initWithTitle:title style:style target:nil action:nil];
	} else {
		[itemDelegate retain];
		[self initWithTitle:title style:style target:itemDelegate action:@selector(clicked__)];
	}
}

- (void) setTitle___java_lang_String :(java_lang_String*)n1 {
	self.title = n1;
}

- (org_xmlvm_iphone_UIView*) getCustomView__ {
	return_XMLVM(customView)
}

- (void) setCustomView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1 { 
	self.customView = n1;
}

- (java_util_Set*) getPossibleTitles__ { 
	return_XMLVM(possibleTitles)
}

- (void) setPossibleTitles___java_util_Set :(java_util_Set*)n1 { 
	self.possibleTitles = n1;
}

- (int) getStyle__ { 
	return self.style;
}

- (void) setStyle___int :(int)n1 { 
	self.style = n1;
}

- (java_lang_Object*) getTarget__ { 
	return_XMLVM(target)
}

- (void) setTarget___java_lang_Object :(java_lang_Object*)n1 { 
	self.target = n1;
}

- (float) getWidth__ { 
	return self.width;
}

- (void) setWidth___float :(float)n1 { 
	self.width = n1;
}



@end

