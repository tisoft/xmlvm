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
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_UIImage.h"
#import "java_lang_String.h"
#import "java_util_ArrayList.h"

// UISegmentedControl
//----------------------------------------------------------------------------
typedef UISegmentedControl org_xmlvm_iphone_UISegmentedControl;
@interface UISegmentedControl (cat_org_xmlvm_iphone_UISegmentedControl)
- (void) __init_org_xmlvm_iphone_UISegmentedControl__;
- (void) __init_org_xmlvm_iphone_UISegmentedControl___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r;
- (void) __init_org_xmlvm_iphone_UISegmentedControl___java_util_ArrayList: (java_util_ArrayList*) items;
- (void) insertSegmentWithTitle___java_lang_String_int_boolean:(java_lang_String *) title :(int)segment :(int)animated;
- (void) insertSegmentWithImage___org_xmlvm_iphone_UIImage_int_boolean:(org_xmlvm_iphone_UIImage *) img :(int)segment :(int)animated;
- (void) setSelectedSegmentIndex___int:(int) index;
- (void) setSegmentedControlStyle___int:(int) style;
- (void) setTitle___java_lang_String_int:(java_lang_String *)title :(int)index;
- (void) setImage___org_xmlvm_iphone_UIImage_int:(org_xmlvm_iphone_UIImage*) image :(int)index;
- (java_lang_String *) getTitleForSegmentAtIndex___int:(int) index;
- (void) removeSegmentAtIndex___int_boolean:(int)index :(int)animated;
- (int) numberOfSegments__;
- (void) removeAllSegments__;
- (int) getSelectedSegmentIndex__;
- (int) getSegmentedControlStyle__;
- (org_xmlvm_iphone_UIColor*) getTintColor__;
- (void) setTintColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*) tint;
- (void) setMomentary___boolean:(int) mom;
- (int) isMomentary__;
@end

