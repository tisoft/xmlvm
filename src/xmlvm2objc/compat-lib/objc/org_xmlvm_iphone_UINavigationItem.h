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
#import "java_lang_Object.h"

#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIBarButtonItem.h"
#import "org_xmlvm_iphone_UIView.h"

#define org_xmlvm_iphone_UINavigationItem UINavigationItem

@interface UINavigationItem (cat_org_xmlvm_iphone_UINavigationItem)

- (void) __init_org_xmlvm_iphone_UINavigationItem___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIBarButtonItem*) getBackBarButtonItem__;
- (void) setBackBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1;
- (int) hidesBackButton__;
- (void) setHidesBackButton___boolean :(int)n1;
- (void) setHidesBackButton___boolean_boolean :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UIBarButtonItem*) getLeftBarButtonItem__;
- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1;
- (void) setLeftBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2;
- (java_lang_String*) getPrompt__;
- (void) setPrompt___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIBarButtonItem*) getRightBarButtonItem__;
- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem :(org_xmlvm_iphone_UIBarButtonItem*)n1;
- (void) setRightBarButtonItem___org_xmlvm_iphone_UIBarButtonItem_boolean :(org_xmlvm_iphone_UIBarButtonItem*)n1 :(int)n2;
- (java_lang_String*) getTitle__;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIView*) getTitleView__;
- (void) setTitleView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;

@end

