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
#import "org_xmlvm_iphone_UIBarItem.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UIImage.h"
#import "java_util_Set.h"
#import "java_lang_Object.h"
//#import "org_xmlvm_iphone_UIBarButtonItemDelegate.h"
@class org_xmlvm_iphone_UIBarButtonItemDelegate;



typedef UIBarButtonItem org_xmlvm_iphone_UIBarButtonItem;

@interface UIBarButtonItem (cat_org_xmlvm_iphone_UIBarButtonItem)

- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIImage_int_org_xmlvm_iphone_UIBarButtonItemDelegate :(org_xmlvm_iphone_UIImage*) image :(int)style :(org_xmlvm_iphone_UIBarButtonItemDelegate*) itemDelegate;
- (void) __init_org_xmlvm_iphone_UIBarButtonItem___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)customView;
- (void) __init_org_xmlvm_iphone_UIBarButtonItem___int_org_xmlvm_iphone_UIBarButtonItemDelegate :(int) systemItem :(org_xmlvm_iphone_UIBarButtonItemDelegate*) itemDelegate;
- (void) __init_org_xmlvm_iphone_UIBarButtonItem___java_lang_String_int_org_xmlvm_iphone_UIBarButtonItemDelegate :(java_lang_String*)title :(int)style :(org_xmlvm_iphone_UIBarButtonItemDelegate*)itemDelegate;
- (void) setTitle___java_lang_String :(java_lang_String*)n1;
- (org_xmlvm_iphone_UIView*) getCustomView__;
- (void) setCustomView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (java_util_Set*) getPossibleTitles__;
- (void) setPossibleTitles___java_util_Set :(java_util_Set*)n1;
- (int) getStyle__;
- (void) setStyle___int :(int)n1;
- (java_lang_Object*) getTarget__;
- (void) setTarget___java_lang_Object :(java_lang_Object*)n1;
- (float) getWidth__;
- (void) setWidth___float :(float)n1;

@end

