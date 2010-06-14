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
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_CGSize.h"
@class org_xmlvm_iphone_UIScrollViewDelegate;

// UIScrollView
//----------------------------------------------------------------------------
typedef UIScrollView org_xmlvm_iphone_UIScrollView;
@interface UIScrollView (cat_org_xmlvm_iphone_UIScrollView)
- (void) __init_org_xmlvm_iphone_UIScrollView__;
- (void) __init_org_xmlvm_iphone_UIScrollView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) setContentOffset___org_xmlvm_iphone_CGPoint_boolean
               :(org_xmlvm_iphone_CGPoint*) offset
               :(int) animated;
- (void) setContentOffset___org_xmlvm_iphone_CGPoint:(org_xmlvm_iphone_CGPoint*) offset;
- (void) setContentOffset___org_xmlvm_iphone_CGPoint_boolean:(org_xmlvm_iphone_CGPoint*) offset :(int)animated;
- (int) isScrollEnabled__;
- (void) setScrollEnabled___boolean :(int)enabled;
- (int) isPagingEnabled__;
- (void) setPagingEnabled___boolean :(int)enabled;
- (org_xmlvm_iphone_CGSize*) getContentSize__;
- (void) setContentSize___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)size;
- (org_xmlvm_iphone_UIScrollViewDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIScrollViewDelegate :(org_xmlvm_iphone_UIScrollViewDelegate*)delegate;
- (int) isScrollsToTop__;
- (void) setScrollsToTop___boolean :(int)totop;
- (int) isShowsHorizontalScrollIndicator__;
- (void) setShowsHorizontalScrollIndicator___boolean :(int)indicator;
- (int) isShowsVerticalScrollIndicator__;
- (void) setShowsVerticalScrollIndicator___boolean :(int)indicator;
- (void) scrollRectToVisible___org_xmlvm_iphone_CGRect_boolean:(org_xmlvm_iphone_CGRect*)rect :(int) animated;
- (org_xmlvm_iphone_CGPoint*) getContentOffset__;
@end
