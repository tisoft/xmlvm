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

#import "xmlvm.h"
#import "org_xmlvm_iphone_UIScrollView.h"
#import "org_xmlvm_iphone_UIView.h"

@interface org_xmlvm_iphone_UIScrollViewDelegate : java_lang_Object <UIScrollViewDelegate>

- (void) __init_org_xmlvm_iphone_UIScrollViewDelegate__;
- (void) scrollViewDidScroll___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (void) scrollViewWillBeginDragging___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (void) scrollViewDidEndDragging___org_xmlvm_iphone_UIScrollView_boolean :(org_xmlvm_iphone_UIScrollView*)scrollView :(int)decelerate;
- (int) scrollViewShouldScrollToTop___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (void) scrollViewDidScrollToTop___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (void) scrollViewWillBeginDecelerating___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (void) scrollViewDidEndDecelerating___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (org_xmlvm_iphone_UIView*) viewForZoomingInScrollView___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;
- (void) scrollViewDidEndZooming___org_xmlvm_iphone_UIScrollView_org_xmlvm_iphone_UIView_float :(org_xmlvm_iphone_UIScrollView*)scrollView :(org_xmlvm_iphone_UIView*)view :(float)scale;
- (void) scrollViewDidEndScrollingAnimation___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView;

@end

