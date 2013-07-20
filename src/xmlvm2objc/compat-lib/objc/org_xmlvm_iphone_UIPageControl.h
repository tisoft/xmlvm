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
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"



#define org_xmlvm_iphone_UIPageControl UIPageControl

@interface UIPageControl (cat_org_xmlvm_iphone_UIPageControl)

- (void) __init_org_xmlvm_iphone_UIPageControl__;
- (void) __init_org_xmlvm_iphone_UIPageControl___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)fr;
- (org_xmlvm_iphone_CGSize*) sizeForNumberOfPages___int :(int)pages;
- (void) updateCurrentPageDisplay__;
- (int) getCurrentPage__;
- (void) setCurrentPage___int :(int)page;
- (int) isDefersCurrentPageDisplay__;
- (void) setDefersCurrentPageDisplay___boolean :(int)value;
- (int) isHidesForSinglePage__;
- (void) setHidesForSinglePage___boolean :(int)value;
- (int) getNumberOfPages__;
- (void) setNumberOfPages___int :(int)pages;

@end

