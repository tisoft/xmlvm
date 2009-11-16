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

#import "org_xmlvm_iphone_UIView.h"

// UIView
//----------------------------------------------------------------------------

@implementation org_xmlvm_iphone_UIView : UIView

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */

- (void) drawRect:(CGRect)rect
{
    org_xmlvm_iphone_CGRect* redrawRect = [[org_xmlvm_iphone_CGRect alloc] init];
    redrawRect->origin->x = rect.origin.x;
    redrawRect->origin->y = rect.origin.y;
    redrawRect->size->width = rect.size.width;
    redrawRect->size->height = rect.size.height;
    [self drawRect___org_xmlvm_iphone_CGRect: redrawRect];
    [redrawRect release];
}

@end

@implementation UIView (cat_org_xmlvm_iphone_UIView)

- (void) __init_org_xmlvm_iphone_UIView__
{
	srand(time(NULL));
}

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];	
	srand(time(NULL));
}

- (void) setFrame___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) frame
{
	self.frame = [frame getCGRect];
}

- (void) setLocation___float_float: (int)x :(int)y {
	CGRect f = self.frame;
	f.origin.x = x;
	f.origin.y = y;
	self.frame = f;
}

- (void) setSize___float_float: (int)width :(int)height {
	CGRect f = self.frame;
	f.size.width = width;
	f.size.height = height;
	self.frame = f;
}

- (org_xmlvm_iphone_CGRect*) getBounds__
{
	org_xmlvm_iphone_CGRect* rect = [[org_xmlvm_iphone_CGRect alloc] init];
	rect->origin->x = self.bounds.origin.x;
	rect->origin->y = self.bounds.origin.y;
	rect->size->width = self.bounds.size.width;
	rect->size->height = self.bounds.size.height;
	return rect;
}

- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

- (void) insertSubview___org_xmlvm_iphone_UIView_int :(org_xmlvm_iphone_UIView*) view :(int) idx
{
    [self insertSubview: view atIndex: idx];
}

- (void) removeFromSuperview__
{
	[self removeFromSuperview];
}

- (void) bringSubviewToFront___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view
{
	[self bringSubviewToFront: view];
}

- (java_util_List*) getSubviews__
{
	java_util_List* views = [self subviews];
	[views retain];
	return views;
}

- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)trans
{
	if (trans == [NSNull null])
 		[self setTransform: CGAffineTransformIdentity];
 	else
    	[self setTransform: trans->transform];
}

- (void) setNeedsDisplay__
{
	[self setNeedsDisplay];
}

- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    [self setNeedsDisplayInRect: r];
}

- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
	// Will not be called because overridden in derived class
}

- (void) setOpaque___boolean :(int)opaque
{
	[self setOpaque:opaque];
}

- (void) setBackgroundColor___org_xmlvm_iphone_UIColor:(org_xmlvm_iphone_UIColor*) col {
	[self setBackgroundColor:col];
}

- (void) setClearsContextBeforeDrawing___boolean :(int)clear
{
	[self setClearsContextBeforeDrawing:clear];
}

- (void) setUserInteractionEnabled___boolean:(int) uinteraction {
    [self setUserInteractionEnabled:uinteraction];
}

- (void) setHidden___boolean:(int) uinteraction {
    [self setHidden:uinteraction];
}

- (void) setClipsToBounds___boolean:(int) clips {
    [self setClipsToBounds:clips];
}

- (org_xmlvm_iphone_CGRect*) getFrame__
{
	org_xmlvm_iphone_CGRect * res = [[org_xmlvm_iphone_CGRect alloc] init];
	CGRect frame = [self frame];
	res->origin->x = frame.origin.x;
	res->origin->y = frame.origin.y;
	res->size->width = frame.size.width;
	res->size->height = frame.size.height;
	return res;
}

- (org_xmlvm_iphone_UIView*) getSuperview__
{
	return [self.superview retain];
}

- (org_xmlvm_iphone_UIColor*) getBackgroundColor__
{
	return [self.backgroundColor retain];
}

- (float) getAlpha__
{
	return [self alpha];
}

- (void) setAlpha___float :(float)n1
{
	[self setAlpha:n1];
}


@end
