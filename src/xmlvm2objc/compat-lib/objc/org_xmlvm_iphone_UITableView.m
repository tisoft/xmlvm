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

#import "org_xmlvm_iphone_UITableView.h"
#import "org_xmlvm_iphone_UIScrollView.h"

// UITableView
//----------------------------------------------------------------------------
@implementation UITableView (cat_org_xmlvm_iphone_UITableView)


- (void) __init_org_xmlvm_iphone_UITableView__
{
	[self initWithFrame:CGRectZero style: UITableViewStylePlain];
}

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

- (org_xmlvm_iphone_UITableViewDataSource*) getDataSource__
{
	return_XMLVM(dataSource)
}

- (void) setDelegate___org_xmlvm_iphone_UITableViewDelegate :(org_xmlvm_iphone_UITableViewDelegate*) newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (org_xmlvm_iphone_UITableViewDelegate*) getTableViewDelegate__
{
	return_XMLVM(delegate)
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

- (void) deleteRowsAtIndexPaths___java_util_List_boolean:(NSArray *)indexPaths :(int)animation
{
	[self deleteRowsAtIndexPaths:indexPaths withRowAnimation:animation];
}


- (void) reloadData__
{
	[self reloadData];
}

- (void) reloadRowsAtIndexPaths___java_util_List_int:(java_util_List*)indexPaths :(int)animation
{
	[self reloadRowsAtIndexPaths:indexPaths withRowAnimation:animation];
}

- (void) insertRowsAtIndexPaths___java_util_List_int:(java_util_List*)indexPaths :(int)animation
{
	[self insertRowsAtIndexPaths:indexPaths withRowAnimation:animation];
}

- (org_xmlvm_iphone_UITableViewCell*) dequeueReusableCellWithIdentifier___java_lang_String :(NSString*)identifier 
{
	return_XMLVM(dequeueReusableCellWithIdentifier:XMLVM_NULL2NIL(identifier))
}

- (org_xmlvm_iphone_NSIndexPath*) indexPathForSelectedRow__
{
    return_XMLVM(indexPathForSelectedRow);
}
                 
- (void) deselectRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_boolean:(org_xmlvm_iphone_NSIndexPath*)indexPath :(int)animation
{
	[self deselectRowAtIndexPath:indexPath animated:animation];
}

- (void) scrollToRowAtIndexPath___org_xmlvm_iphone_NSIndexPath_int_boolean:(org_xmlvm_iphone_NSIndexPath*)indexPath :(int)scrollPosition :(int)animated
{
	[self scrollToRowAtIndexPath:indexPath atScrollPosition:scrollPosition animated:animated];
}

- (void) scrollToNearestSelectedRowAtScrollPosition___int_boolean:(int)scrollPosition :(int)animated
{
	[self scrollToNearestSelectedRowAtScrollPosition:scrollPosition animated:animated];
}

@end
