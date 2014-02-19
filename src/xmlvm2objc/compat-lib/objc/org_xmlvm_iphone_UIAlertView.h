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

#import "xmlvm.h"
#import "java_lang_String.h"

@class org_xmlvm_iphone_UIAlertViewDelegate;


// UIAlertView
//----------------------------------------------------------------------------
#define org_xmlvm_iphone_UIAlertView UIAlertView
@interface UIAlertView (cat_org_xmlvm_iphone_UIAlertView)

- (void) __init_org_xmlvm_iphone_UIAlertView___java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String
             :(java_lang_String*) title
             :(java_lang_String*) message
             :(org_xmlvm_iphone_UIAlertViewDelegate*) delegate
             :(java_lang_String*) cancelButtonTitle;

- (void) __init_org_xmlvm_iphone_UIAlertView___java_lang_String_java_lang_String_org_xmlvm_iphone_UIAlertViewDelegate_java_lang_String_java_lang_String_ARRAYTYPE
        :(java_lang_String*) title
        :(java_lang_String*) message
        :(org_xmlvm_iphone_UIAlertViewDelegate*) delegate
        :(java_lang_String*) cancelButtonTitle
        :(XMLVMArray *) otherButtonTitles;

- (void) setTitle___java_lang_String
			 :(java_lang_String*) title;

- (void) setMessage___java_lang_String
			 :(java_lang_String*) message;

- (int) addButtonWithTitle___java_lang_String
             :(java_lang_String*) title;
             
- (void) show__;

- (void) setAlertViewStyle___int:(int) style;
- (int) getAlertViewStyle__;
- (UITextField *) textFieldAtIndex___int:(int) index;

@end
