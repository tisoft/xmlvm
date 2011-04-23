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
#import "org_xmlvm_iphone_UITableViewCell.h"
#import "org_xmlvm_iphone_NSIndexPath.h"


// UITableViewDataSource
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UITableViewDataSource : java_lang_Object <UITableViewDataSource> {
@private    BOOL respondsToMoveRow;
}

- (void) __init_org_xmlvm_iphone_UITableViewDataSource__;
- (org_xmlvm_iphone_UITableViewCell*) cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
      :(UITableView*) table
      :(org_xmlvm_iphone_NSIndexPath*) idx;
- (int) numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) table :(int) section;
- (int) numberOfSectionsInTableView___org_xmlvm_iphone_UITableView:(UITableView *)tableView;
- (java_lang_String *) titleForHeaderInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) tableView :(int) section;
- (void) commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath:(UITableView*) tableView :(int)style :(NSIndexPath*) indexPath;
- (int) canEditRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)table :(org_xmlvm_iphone_NSIndexPath*)path;
- (int) canMoveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :(UITableView*)table :(org_xmlvm_iphone_NSIndexPath*)path;
- (void) moveRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath_org_xmlvm_iphone_NSIndexPath :(UITableView*)table :(org_xmlvm_iphone_NSIndexPath*)frompath :(org_xmlvm_iphone_NSIndexPath*)tompath;

@end

