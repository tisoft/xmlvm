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

#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UITableViewDataSource.h"
#import "org_xmlvm_iphone_UITableViewDelegate.h"
#import "org_xmlvm_iphone_UITableViewCell.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "java_util_ArrayList.h"

// UITableView
//----------------------------------------------------------------------------
typedef UITableView org_xmlvm_iphone_UITableView;
@interface UITableView (cat_org_xmlvm_iphone_UITableView)
- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect;
- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect_int :(org_xmlvm_iphone_CGRect*) rect :(int) style;
- (void) setDataSource___org_xmlvm_iphone_UITableViewDataSource :(org_xmlvm_iphone_UITableViewDataSource*) source;
- (org_xmlvm_iphone_UITableViewDataSource*) getDataSource__;
- (void) setDelegate___org_xmlvm_iphone_UITableViewDelegate :(org_xmlvm_iphone_UITableViewDelegate*) delegate;
- (org_xmlvm_iphone_UITableViewDelegate*) getTableViewDelegate__;
- (void) setSeparatorColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)separatorColor;
- (org_xmlvm_iphone_UIColor*) getSeparatorColor__;
- (void) setSeparatorStyle___int :(int)separatorStyle;
- (int) getSeparatorStyle__;
- (int) isAllowsSelection__;
- (void) setAllowsSelection___boolean :(int)allowsel;
- (void) setRowHeight___float: (float)height;
- (float) getRowHeight__;
- (int) isEditing__;
- (void) setEditing___boolean :(int)edit;
- (void) setEditing___boolean_boolean :(int)edit :(int)animated;
- (void) deleteRowsAtIndexPaths___java_util_ArrayList_boolean:(NSArray *)indexPaths :(int)animation;
- (void) reloadData__;
- (void) reloadRowsAtIndexPaths___java_util_ArrayList_int:(java_util_ArrayList*)indexPaths :(int)animation;
- (org_xmlvm_iphone_UITableViewCell*) dequeueReusableCellWithIdentifier___java_lang_String :(NSString*)identifier;
- (void) deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean:(org_xmlvm_iphone_NSIndexPath*)indexPath :(int)animation;
@end
