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

#import "org_xmlvm_iphone_UIScrollViewDelegate.h"

/** @author teras */

@implementation org_xmlvm_iphone_UIScrollViewDelegate;

- (void) __init_org_xmlvm_iphone_UIScrollViewDelegate__
{
}

- (void) scrollViewDidScroll___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
}

- (void) scrollViewWillBeginDragging___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
}

- (void) scrollViewDidEndDragging___org_xmlvm_iphone_UIScrollView_boolean :(org_xmlvm_iphone_UIScrollView*)scrollView :(int)decelerate
{
}

- (int) scrollViewShouldScrollToTop___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
	return YES;
}

- (void) scrollViewDidScrollToTop___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
}

- (void) scrollViewWillBeginDecelerating___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
}

- (void) scrollViewDidEndDecelerating___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
}

- (org_xmlvm_iphone_UIView*) viewForZoomingInScrollView___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
	return nil;
}

- (void) scrollViewDidEndZooming___org_xmlvm_iphone_UIScrollView_org_xmlvm_iphone_UIView_float :(org_xmlvm_iphone_UIScrollView*)scrollView :(org_xmlvm_iphone_UIView*)view :(float)scale
{
}

- (void) scrollViewDidEndScrollingAnimation___org_xmlvm_iphone_UIScrollView :(org_xmlvm_iphone_UIScrollView*)scrollView
{
}

// Original delegate methods


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
	[self scrollViewDidEndDecelerating___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
	[self scrollViewDidEndDragging___org_xmlvm_iphone_UIScrollView_boolean:scrollView :decelerate];
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
	[self scrollViewDidEndScrollingAnimation___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale
{
	[self scrollViewDidEndZooming___org_xmlvm_iphone_UIScrollView_org_xmlvm_iphone_UIView_float:scrollView :view :scale];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
	[self scrollViewDidScroll___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView
{
	[self scrollViewDidScrollToTop___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
	return [self scrollViewShouldScrollToTop___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
	[self scrollViewWillBeginDecelerating___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
	[self scrollViewWillBeginDragging___org_xmlvm_iphone_UIScrollView:scrollView];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
	return_XMLVM(viewForZoomingInScrollView___org_xmlvm_iphone_UIScrollView:scrollView)
}

@end

