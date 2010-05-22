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

#import "org_xmlvm_iphone_UIPageControl.h"

/** @author teras */


@implementation UIPageControl (cat_org_xmlvm_iphone_UIPageControl)


- (void) __init_org_xmlvm_iphone_UIPageControl__
{
}


- (void) __init_org_xmlvm_iphone_UIPageControl___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)fr
{
	[self setFrame:[fr getCGRect]];
}


- (org_xmlvm_iphone_CGSize*) sizeForNumberOfPages___int :(int)pages
{
	return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self sizeForNumberOfPages:pages]];
}


- (void) updateCurrentPageDisplay__
{
	[self updateCurrentPageDisplay];
}


- (int) getCurrentPage__
{
	return [self currentPage];
}


- (void) setCurrentPage___int :(int)page
{
	[self setCurrentPage:page];
}


- (int) isDefersCurrentPageDisplay__
{
	return [self defersCurrentPageDisplay];
}


- (void) setDefersCurrentPageDisplay___boolean :(int)value
{
	[self setDefersCurrentPageDisplay:value];
}


- (int) isHidesForSinglePage__
{
	return [self hidesForSinglePage];
}


- (void) setHidesForSinglePage___boolean :(int)value
{
	[self setHidesForSinglePage:value];
}


- (int) getNumberOfPages__
{
	return [self numberOfPages];
}


- (void) setNumberOfPages___int :(int)pages
{
	[self setNumberOfPages:pages];
}


@end

