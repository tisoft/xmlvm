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


/** @author teras */

#import "org_xmlvm_iphone_UISearchBarDelegate.h"


@implementation org_xmlvm_iphone_UISearchBarDelegate;

- (void) __init_org_xmlvm_iphone_UISearchBarDelegate__
{
}


- (void) searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String :(org_xmlvm_iphone_UISearchBar*)sb :(NSString*)txt
{
}


- (int) searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
	return YES;
}


- (void) searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
}


- (int) searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
	return YES;
}


- (void) searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
}


- (void) searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
}


- (void) searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
}


- (void) searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar :(org_xmlvm_iphone_UISearchBar*)sb
{
}

- (void) searchBar:(UISearchBar *)sb textDidChange:(NSString *)txt
{
	[self searchBarTextDidChange___org_xmlvm_iphone_UISearchBar_java_lang_String:sb :txt];
}

- (void) searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int :(org_xmlvm_iphone_UISearchBar*)sb :(int)selectedScope
{	
}

- (BOOL) searchBarShouldBeginEditing:(UISearchBar *) sb
{
	return [self searchBarShouldBeginEditing___org_xmlvm_iphone_UISearchBar:sb];
}

- (void) searchBarTextDidBeginEditing:(UISearchBar *)sb
{
	[self searchBarTextDidBeginEditing___org_xmlvm_iphone_UISearchBar:sb];
}

- (BOOL) searchBarShouldEndEditing:(UISearchBar *)sb
{
	return [self searchBarShouldEndEditing___org_xmlvm_iphone_UISearchBar:sb];
}

- (void) searchBarTextDidEndEditing:(UISearchBar *)sb
{
	[self searchBarTextDidEndEditing___org_xmlvm_iphone_UISearchBar:sb];
}

- (void) searchBarBookmarkButtonClicked:(UISearchBar *)sb
{
	[self searchBarBookmarkButtonClicked___org_xmlvm_iphone_UISearchBar:sb];
}

- (void) searchBarCancelButtonClicked:(UISearchBar *)sb
{
	[self searchBarCancelButtonClicked___org_xmlvm_iphone_UISearchBar:sb];
}

- (void) searchBarSearchButtonClicked:(UISearchBar *)sb
{
	[self searchBarSearchButtonClicked___org_xmlvm_iphone_UISearchBar:sb];
}

- (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
{
	[self searchBarSelectedScopeButtonIndexDidChange___org_xmlvm_iphone_UISearchBar_int:searchBar :selectedScope];
}

@end

