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

#import "org_xmlvm_iphone_UIScrollView.h"
#import "org_xmlvm_iphone_UIScrollViewDelegate.h"

// UIScrollView
//----------------------------------------------------------------------------
@implementation UIScrollView (cat_org_xmlvm_iphone_UIScrollView);

- (void) __init_org_xmlvm_iphone_UIScrollView__
{
}

- (void) __init_org_xmlvm_iphone_UIScrollView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
	[self setFrame: [rect getCGRect]];
}

- (void) setContentOffset___org_xmlvm_iphone_CGPoint_boolean
               :(org_xmlvm_iphone_CGPoint*) offset
               :(int) animated
{
    CGPoint p = CGPointMake(offset->x_float, offset->y_float);
    [self setContentOffset:p animated:animated];
}

- (void) setContentOffset___org_xmlvm_iphone_CGPoint:(org_xmlvm_iphone_CGPoint*) offset
{
    CGPoint p = CGPointMake(offset->x_float, offset->y_float);
    [self setContentOffset:p];
}

- (int) isScrollEnabled__
{
	return [self isScrollEnabled];
}

- (void) setScrollEnabled___boolean :(int)enabled
{
	[self setScrollEnabled:enabled];
}

- (int) isPagingEnabled__
{
	return [self isPagingEnabled];
}

- (void) setPagingEnabled___boolean :(int)enabled
{
	[self setPagingEnabled:enabled];
}

- (org_xmlvm_iphone_CGSize*) getContentSize__
{
	return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self contentSize]];
}

- (void) setContentSize___org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGSize*)size
{
	CGSize s = CGSizeMake(size->width_float, size->height_float);
	[self setContentSize:s];
}

- (org_xmlvm_iphone_UIScrollViewDelegate*) getDelegate__
{
	return_XMLVM(delegate)
}

- (void) setDelegate___org_xmlvm_iphone_UIScrollViewDelegate :(org_xmlvm_iphone_UIScrollViewDelegate*)newdelegate
{
	XMLVM_PROPERTY(delegate,newdelegate)
}

- (int) isScrollsToTop__
{
	return [self scrollsToTop];
}

- (void) setScrollsToTop___boolean :(int)totop
{
	[self setScrollsToTop:totop];
}

- (int) isBounces__
{
	return [self bounces];
}

- (void) setBounces___boolean:(int) bounce
{
	[self setBounces:bounce];
}

- (int) isShowsHorizontalScrollIndicator__
{
	return [self showsHorizontalScrollIndicator];
}

- (void) setShowsHorizontalScrollIndicator___boolean :(int)indicator
{
	[self setShowsHorizontalScrollIndicator:indicator];
}

- (int) isShowsVerticalScrollIndicator__
{
	return [self showsVerticalScrollIndicator];
}

- (void) setShowsVerticalScrollIndicator___boolean :(int)indicator
{
	[self setShowsVerticalScrollIndicator:indicator];
}

- (int) isDelaysContentTouches__
{
	return [self delaysContentTouches];
}

- (void) setDelaysContentTouches___boolean:(int)delays
{
	[self setDelaysContentTouches:delays];
}

- (void) scrollRectToVisible___org_xmlvm_iphone_CGRect_boolean:(org_xmlvm_iphone_CGRect*)rect :(int) animated
{
	[self scrollRectToVisible:[rect getCGRect] animated:animated];
}

- (org_xmlvm_iphone_CGPoint*) getContentOffset__
{
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:[self contentOffset]];
}

- (org_xmlvm_iphone_UIEdgeInsets*) getScrollIndicatorInsets__
{
    return [[org_xmlvm_iphone_UIEdgeInsets alloc] initWithUIEdgeInsets:[self scrollIndicatorInsets]];
}

- (void) setScrollIndicatorInsets___org_xmlvm_iphone_UIEdgeInsets:(org_xmlvm_iphone_UIEdgeInsets*) ins
{
    [self setScrollIndicatorInsets:[XMLVM_NULL2NIL(ins) getUIEdgeInsets]];
}

- (org_xmlvm_iphone_UIEdgeInsets*) getContentInset__
{
    return [[org_xmlvm_iphone_UIEdgeInsets alloc] initWithUIEdgeInsets:[self contentInset]];
}

- (void) setContentInset___org_xmlvm_iphone_UIEdgeInsets:(org_xmlvm_iphone_UIEdgeInsets*) ins
{
    [self setContentInset:[XMLVM_NULL2NIL(ins) getUIEdgeInsets]];
}


@end
