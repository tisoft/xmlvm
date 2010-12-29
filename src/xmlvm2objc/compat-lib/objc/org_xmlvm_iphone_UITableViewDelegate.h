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
#import "org_xmlvm_iphone_UITableViewCell.h"
#import "org_xmlvm_iphone_NSIndexPath.h"

// UITableViewDelegate
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UITableViewDelegate : java_lang_Object <UITableViewDelegate>

- (void) __init_org_xmlvm_iphone_UITableViewDelegate__;

- (void) willDisplayCellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_UITableViewCell_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(UITableViewCell*)cell :(NSIndexPath*)path;
- (void) accessoryButtonTappedForRowWithIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;
- (void) didSelectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;
- (void) didDeselectRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;
- (void) willBeginEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;
- (void) didEndEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;
- (int) shouldIndentWhileEditingRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;
- (int) editingStyleForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)tableview :(NSIndexPath*)path;

// Unsafe selectors. DO NOT IMPLEMENT.
// They SHOULD produce errors "incomplete implementation of class, or else dynamic callback will not be possible
- (float) heightForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)n1 :(NSIndexPath*)n2;
- (org_xmlvm_iphone_UIView*) viewForHeaderInSection___org_xmlvm_iphone_UITableView_int :(UITableView*)n1 :(int)n2;
- (org_xmlvm_iphone_UIView*) viewForFooterInSection___org_xmlvm_iphone_UITableView_int :(UITableView*)n1 :(int)n2;
- (float) heightForHeaderInSection___org_xmlvm_iphone_UITableView_int :(UITableView*)n1 :(int)n2;
- (float) heightForFooterInSection___org_xmlvm_iphone_UITableView_int :(UITableView*)n1 :(int)n2;
- (java_lang_String*) titleForDeleteConfirmationButtonForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)n1 :(NSIndexPath*)n2;

@end

