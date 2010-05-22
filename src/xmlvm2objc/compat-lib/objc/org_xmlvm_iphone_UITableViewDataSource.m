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

#import "org_xmlvm_iphone_UITableViewDataSource.h"


// UITableViewDataSource
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UITableViewDataSource

// This is a trick to only take into account selectors that have already been overloaded 
- (BOOL)respondsToSelector:(SEL)aSelector {
	XMLVM_REROUTE(aSelector,tableView:commitEditingStyle:forRowAtIndexPath:,commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath:::)
    return [super respondsToSelector:aSelector];
}

- (void) __init_org_xmlvm_iphone_UITableViewDataSource__
{
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell * cell = [self cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :tableView :indexPath];
	return XMLVM_VALUE(cell);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :tableView :(int) section];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return [self numberOfSectionsInTableView___org_xmlvm_iphone_UITableView: tableView];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	NSString * title = [self titleForHeaderInSection___org_xmlvm_iphone_UITableView_int :tableView :(int) section];
	return XMLVM_VALUE(title);
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
	[self commitEditingStyle___org_xmlvm_iphone_UITableView_int_org_xmlvm_iphone_NSIndexPath:tableView :editingStyle :indexPath];
}


// Will be over-ridden in derived class
- (org_xmlvm_iphone_UITableViewCell*) cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
:(UITableView*) table
:(org_xmlvm_iphone_NSIndexPath*) idx
{
	return JAVA_NULL;
}

// Will be over-ridden in derived class
- (int) numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) table :(int) section
{
	return 0;
}

// Might be over-ridden in derived class
- (int)numberOfSectionsInTableView___org_xmlvm_iphone_UITableView :(UITableView *)tableView
{
	return 1;
}

// Might be over-ridden in derived class
- (java_lang_String *) titleForHeaderInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) tableView :(int) section
{
	return JAVA_NULL;
}

// Note: it is important this object to be incomplete, or else smart usage of selectors will not be possible
@end

