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
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UITableViewCell.h"
#import "org_xmlvm_iphone_NSIndexPath.h"


// UITableViewDataSource
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UITableViewDataSource : java_lang_Object <UITableViewDataSource>

- (void) __init_org_xmlvm_iphone_UITableViewDataSource__;
- (org_xmlvm_iphone_UITableViewCell*) cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
      :(UITableView*) table
      :(org_xmlvm_iphone_NSIndexPath*) idx;
- (int) numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) table :(int) section;
- (int) numberOfSectionsInTableView___org_xmlvm_iphone_UITableView:(UITableView *)tableView;
- (java_lang_String *) titleForHeaderInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) tableView :(int) section;
- (void) commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath:(UITableView*) tableView :(int)style :(NSIndexPath*) indexPath;

@end

