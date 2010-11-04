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

#import "org_xmlvm_iphone_UIAlertView.h"

// UIAlertView
//----------------------------------------------------------------------------
@implementation UIAlertView (cat_org_xmlvm_iphone_UIAlertView)

- (void) __init_org_xmlvm_iphone_UIAlertView___java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String
             :(java_lang_String*) title
             :(java_lang_String*) message
             :(org_xmlvm_iphone_UIAlertViewDelegate*) currentdelegate
             :(java_lang_String*) cancelButtonTitle
{
	XMLVM_PROPERTY_WITHCOMMAND(delegate,XMLVM_VALUE(currentdelegate),)
	[self initWithTitle:XMLVM_VALUE(title) message:XMLVM_VALUE(message) delegate:XMLVM_VALUE(currentdelegate)
	      cancelButtonTitle:XMLVM_VALUE(cancelButtonTitle) otherButtonTitles: nil];
}

- (void) setTitle___java_lang_String
			 :(java_lang_String*) title;
{
	self.title = XMLVM_VALUE(title);
}

- (void) setMessage___java_lang_String
			 :(java_lang_String*) message;
{
	self.message = XMLVM_VALUE(message);
}

- (int) addButtonWithTitle___java_lang_String
             :(java_lang_String*) title;
{
	return [self addButtonWithTitle:XMLVM_VALUE(title)];
}

- (void) show__
{
	[self show];
}

@end
