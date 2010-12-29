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

#import "org_xmlvm_iphone_UITableViewDelegate.h"

#import "org_xmlvm_iphone_UITableView.h"


// UITableViewDelegate
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UITableViewDelegate

// This is a trick to only take into account selectors that have already been overloaded 
- (BOOL)respondsToSelector:(SEL)aSelector {
	XMLVM_REROUTE(aSelector,tableView:heightForRowAtIndexPath:,heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath::)
	XMLVM_REROUTE(aSelector,tableView:viewForHeaderInSection:,viewForHeaderInSection___org_xmlvm_iphone_UITableView_int::)
	XMLVM_REROUTE(aSelector,tableView:viewForFooterInSection:,viewForFooterInSection___org_xmlvm_iphone_UITableView_int::)
	XMLVM_REROUTE(aSelector,tableView:heightForHeaderInSection:,heightForHeaderInSection___org_xmlvm_iphone_UITableView_int::)
	XMLVM_REROUTE(aSelector,tableView:heightForFooterInSection:,heightForFooterInSection___org_xmlvm_iphone_UITableView_int::)
	XMLVM_REROUTE(aSelector,tableView:titleForDeleteConfirmationButtonForRowAtIndexPath:,titleForDeleteConfirmationButtonForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath::)
    return [super respondsToSelector:aSelector];
}


- (void) __init_org_xmlvm_iphone_UITableViewDelegate__
{
}

// Safe selectors which return void

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath 
{
	[self willDisplayCellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_UITableViewCell_org_xmlvm_iphone_NSIndexPath:tableView :cell :indexPath];
}
- (void) willDisplayCellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_UITableViewCell_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableView :(UITableViewCell*)cell :(NSIndexPath*)indexPath
{
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
	[self accessoryButtonTappedForRowWithIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (void) accessoryButtonTappedForRowWithIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableView :(NSIndexPath*)indexPath
{
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (void) didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableView :(NSIndexPath*)indexPath
{
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self didDeselectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (void) didDeselectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableView :(NSIndexPath*)indexPath
{
}

- (void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self willBeginEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (void) willBeginEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableView :(NSIndexPath*)indexPath
{
}

- (void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self didEndEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (void) didEndEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableView :(NSIndexPath*)indexPath
{
}


// Safe selectors which return safe values

- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [self shouldIndentWhileEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (int) shouldIndentWhileEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path
{
	return YES;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [self editingStyleForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}
- (int) editingStyleForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path
{
	return UITableViewCellEditingStyleDelete;
}



// Unsafe selectors, these will be hidden during runtime, if the java produced selector does not exist.


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [self heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
	return [self viewForHeaderInSection___org_xmlvm_iphone_UITableView_int:tableView :section];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
	return [self viewForFooterInSection___org_xmlvm_iphone_UITableView_int:tableView :section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
	return [self heightForHeaderInSection___org_xmlvm_iphone_UITableView_int:tableView :section];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
	return [self heightForFooterInSection___org_xmlvm_iphone_UITableView_int:tableView :section];
}

- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [self titleForDeleteConfirmationButtonForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath:tableView :indexPath];
}


// Note: it is important this object to be incomplete, or else smart usage of selectors will not be possible
@end

