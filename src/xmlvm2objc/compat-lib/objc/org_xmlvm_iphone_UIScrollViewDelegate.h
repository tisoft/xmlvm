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

