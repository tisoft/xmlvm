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
	return XMLVM_NULL2NIL(cell);
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
	return XMLVM_NULL2NIL(title);
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

