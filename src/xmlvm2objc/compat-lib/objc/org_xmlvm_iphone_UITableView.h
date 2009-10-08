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


// UITableView
//----------------------------------------------------------------------------
typedef UITableView org_xmlvm_iphone_UITableView;
@interface UITableView (cat_org_xmlvm_iphone_UITableView)
- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) rect;
- (void) __init_org_xmlvm_iphone_UITableView___org_xmlvm_iphone_CGRect_int :(org_xmlvm_iphone_CGRect*) rect :(int) style;
- (void) setDataSource___org_xmlvm_iphone_UITableViewDataSource :(org_xmlvm_iphone_UITableViewDataSource*) source;
- (void) setDelegate___org_xmlvm_iphone_UITableViewDelegate :(org_xmlvm_iphone_UITableViewDelegate*) delegate;
@end