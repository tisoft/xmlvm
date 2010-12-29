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

#import "org_xmlvm_iphone_UIPageControl.h"




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

