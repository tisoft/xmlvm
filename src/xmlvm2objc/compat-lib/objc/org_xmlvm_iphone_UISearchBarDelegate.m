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

