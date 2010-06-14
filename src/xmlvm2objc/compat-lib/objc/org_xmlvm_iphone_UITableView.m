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

#import "org_xmlvm_iphone_UITableView.h"

// UITableView
//----------------------------------------------------------------------------
@implementation UITableView (cat_org_xmlvm_iphone_UITableView)

- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect
{
	[self initWithFrame: [rect getCGRect] style: UITableViewStylePlain];
}

- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect_int :(org_xmlvm_iphone_CGRect*) rect :(int) style
{
	[self initWithFrame: [rect getCGRect] style: ((style == 0) ? UITableViewStylePlain : UITableViewStyleGrouped)];
}

- (void) setDataSource___org_xmlvm_iphone_UITableViewDataSource :(org_xmlvm_iphone_UITableViewDataSource*) newsource
{
	XMLVM_PROPERTY(dataSource,newsource)
}

- (void) setDelegate___org_xmlvm_iphone_UITableViewDelegate :(org_xmlvm_iphone_UITableViewDelegate*) newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (void) setSeparatorColor___org_xmlvm_iphone_UIColor :(org_xmlvm_iphone_UIColor*)separatorColor
{
	[self setSeparatorColor:separatorColor];
}

- (org_xmlvm_iphone_UIColor*) getSeparatorColor__
{
	return_XMLVM(separatorColor)
}

- (void) setSeparatorStyle___int :(int)separatorStyle
{
	[self setSeparatorStyle:separatorStyle];
}

- (int) getSeparatorStyle__
{
	return [self separatorStyle];
}

- (int) isAllowsSelection__
{
	return [self allowsSelection];
}

- (void) setAllowsSelection___boolean :(int)allowsel
{
	[self setAllowsSelection:allowsel];
}

- (void) setRowHeight___float: (float)height
{
	[self setRowHeight:height];
}

- (float) getRowHeight__
{
	return [self rowHeight];
}

- (int) isEditing__
{
	return [self isEditing];
}
- (void) setEditing___boolean :(int)edit
{
	[self setEditing:edit];
}

- (void) setEditing___boolean_boolean :(int)edit :(int)animated
{
	[self setEditing:edit animated:animated];
}

- (void) deleteRowsAtIndexPaths___java_util_ArrayList_boolean:(NSArray *)indexPaths :(int)animation
{
	[self deleteRowsAtIndexPaths:indexPaths withRowAnimation:animation];
}


- (void) reloadData__
{
	[self reloadData];
}

- (void) reloadRowsAtIndexPaths___java_util_ArrayList_int:(java_util_ArrayList*)indexPaths :(int)animation
{
	[self reloadRowsAtIndexPaths:indexPaths withRowAnimation:animation];
}

- (org_xmlvm_iphone_UITableViewCell*) dequeueReusableCellWithIdentifier___java_lang_String :(NSString*)identifier 
{
	return_XMLVM(dequeueReusableCellWithIdentifier:identifier)
}

- (void) deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean:(org_xmlvm_iphone_NSIndexPath*)indexPath :(int)animation
{
	[self deselectRowAtIndexPath:indexPath animated:animation];
}

@end
