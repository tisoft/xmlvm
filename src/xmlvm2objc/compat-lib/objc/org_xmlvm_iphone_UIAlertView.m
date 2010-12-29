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
	XMLVM_PROPERTY_WITHCOMMAND(delegate,XMLVM_NULL2NIL(currentdelegate),)
	[self initWithTitle:XMLVM_NULL2NIL(title) message:XMLVM_NULL2NIL(message) delegate:XMLVM_NULL2NIL(currentdelegate)
	      cancelButtonTitle:XMLVM_NULL2NIL(cancelButtonTitle) otherButtonTitles: nil];
}

- (void) setTitle___java_lang_String
			 :(java_lang_String*) title;
{
	self.title = XMLVM_NULL2NIL(title);
}

- (void) setMessage___java_lang_String
			 :(java_lang_String*) message;
{
	self.message = XMLVM_NULL2NIL(message);
}

- (int) addButtonWithTitle___java_lang_String
             :(java_lang_String*) title;
{
	return [self addButtonWithTitle:XMLVM_NULL2NIL(title)];
}

- (void) show__
{
	[self show];
}

@end
