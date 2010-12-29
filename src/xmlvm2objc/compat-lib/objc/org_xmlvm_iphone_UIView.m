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

#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UIWindow.h"

// UIView
//----------------------------------------------------------------------------

@implementation org_xmlvm_iphone_UIView : UIView

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */

- (void) drawRect:(CGRect)rect
{
	org_xmlvm_iphone_CGRect * r = [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:rect];
	[self drawRect___org_xmlvm_iphone_CGRect:r];
	[r release];
}

- (void) drawRect___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect
{
	[super drawRect:[rect getCGRect]];
}

@end

@implementation UIView (cat_org_xmlvm_iphone_UIView)

- (void) __init_org_xmlvm_iphone_UIView__
{
}

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self setFrame: [n1 getCGRect]];	
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
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:[self bounds]];
}

- (void) setBounds___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) bounds
{
	self.bounds = [bounds getCGRect];
}

- (void) setCenter___org_xmlvm_iphone_CGPoint:(org_xmlvm_iphone_CGPoint*) point
{
	[self setCenter:[point getCGPoint]];
}

- (org_xmlvm_iphone_CGPoint*) getCenter__
{
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:[self center]];
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
	// According to the documentation, the receiver will also be released by calling removeFromSuperview
	//TODO needed or not?
	//[self retain];
	[self removeFromSuperview];
}

- (void) sendSubviewToBack___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) subView
{
	[self sendSubviewToBack:subView];
}

- (void) bringSubviewToFront___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view
{
	[self bringSubviewToFront: view];
}

- (java_util_List*) getSubviews__
{
	return_XMLVM(subviews)
}

- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)trans
{
	[self setTransform:((trans==JAVA_NULL) ? CGAffineTransformIdentity : trans->transform)];
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

- (int) isOpaque__
{
	return [self isOpaque];
}

- (void) setOpaque___boolean :(int)opaque
{
	[self setOpaque:opaque];
}

- (int) isHidden__
{
	return [self isHidden];
}

- (void) setHidden___boolean :(int) hid
{
	[self setHidden:hid];
}

- (void) setBackgroundColor___org_xmlvm_iphone_UIColor:(org_xmlvm_iphone_UIColor*) col {
	[self setBackgroundColor:XMLVM_NULL2NIL(col)];
}

- (void) setClearsContextBeforeDrawing___boolean :(int)clear
{
	[self setClearsContextBeforeDrawing:clear];
}

- (void) setUserInteractionEnabled___boolean:(int) uinteraction {
    [self setUserInteractionEnabled:uinteraction];
}

- (int) isUserInteractionEnabled__
{
	return [self isUserInteractionEnabled];
}

- (void) setContentMode___int:(int) mode
{
	self.contentMode = mode;
}

- (int) getContentMode__
{
	return self.contentMode;
}

- (void) setClipsToBounds___boolean:(int) clips {
    [self setClipsToBounds:clips];
}

- (org_xmlvm_iphone_CGRect*) getFrame__
{
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:[self frame]];
}

- (org_xmlvm_iphone_UIView*) getSuperview__
{
	return_XMLVM(superview)
}

- (org_xmlvm_iphone_UIColor*) getBackgroundColor__
{
	return_XMLVM(backgroundColor)
}

- (float) getAlpha__
{
	return [self alpha];
}

- (void) setAlpha___float :(float)n1
{
	[self setAlpha:n1];
}

- (int) getTag__
{
	return [self tag];
}


- (void) setTag___int :(int)tag
{
	[self setTag:tag];
}

- (org_xmlvm_iphone_UIWindow*) getWindow__
{
	return_XMLVM(window)
}

- (org_xmlvm_iphone_CALayer*) getLayer__
{
	return_XMLVM(layer)
}


- (void) sizeToFit__
{
	[self sizeToFit];
}

- (void) setAutoresizingMask___int:(int)mask
{
	[self setAutoresizingMask:mask];
}

- (int) getAutoresizingMask__
{
	return [self autoresizingMask];
}

- (void) setAutoresizesSubviews___boolean:(int)aresize
{
	[self setAutoresizesSubviews:aresize];
}

- (int) isAutoresizesSubviews__
{
	return [self autoresizesSubviews];
}

- (org_xmlvm_iphone_CGSize*) sizeThatFits___org_xmlvm_iphone_CGSize:(org_xmlvm_iphone_CGSize*) size
{
	return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self sizeThatFits:[size getCGSize]]];
}


- (org_xmlvm_iphone_CGPoint*) convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIView*) view
{
	CGPoint to = [self convertPoint:[point getCGPoint] fromView:XMLVM_NULL2NIL(view)];
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:to];
}

- (org_xmlvm_iphone_CGPoint*) convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIView*) view
{
	CGPoint to = [self convertPoint:[point getCGPoint] toView:XMLVM_NULL2NIL(view)];
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:to];
}

- (org_xmlvm_iphone_CGRect*) convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIView*) view
{
	CGRect to = [self convertRect:[rect getCGRect] fromView:XMLVM_NULL2NIL(view)];
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:to];
}

- (org_xmlvm_iphone_CGRect*) convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIView*) view
{
	CGRect to = [self convertRect:[rect getCGRect] toView:XMLVM_NULL2NIL(view)];
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:to];
}

// View animations
+ (void) beginAnimations___java_lang_String :(NSString*)animationID
{
	[UIView beginAnimations:animationID context:NULL];
}

+ (void) commitAnimations__
{
	[UIView commitAnimations];
}

+ (void) setAnimationStartDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)startTime
{
	[UIView setAnimationStartDate:startTime];
}

+ (void) setAnimationsEnabled___boolean :(BOOL)enabled
{
	[UIView setAnimationsEnabled:enabled];
}

+ (void) setAnimationDuration___double :(double)duration
{
	[UIView setAnimationDuration:duration];
}

+ (void) setAnimationDelay___double :(double)delay
{
	[UIView setAnimationDelay:delay];
}

+ (void) setAnimationCurve___int :(int)curve
{
	[UIView setAnimationCurve:curve];
}

+ (void) setAnimationRepeatCount___float :(float)repeatCount
{
	[UIView setAnimationRepeatCount:repeatCount];
}

+ (void) setAnimationRepeatAutoreverses___boolean :(int)repeatAutoreverses
{
	[UIView setAnimationRepeatAutoreverses:repeatAutoreverses];
}

+ (void) setAnimationBeginsFromCurrentState___boolean :(int)fromCurrentState
{
	[UIView setAnimationBeginsFromCurrentState:fromCurrentState];
}

+ (void) setAnimationTransitionForView___int_org_xmlvm_iphone_UIView_boolean :(int)transition :(org_xmlvm_iphone_UIView*)view :(BOOL)cache
{
	[UIView setAnimationTransition:transition forView:view cache:cache];
}

+ (int) areAnimationsEnabled__
{
	return [UIView areAnimationsEnabled];
}


// DELEGATE
+ (void) setAnimationDelegate___org_xmlvm_iphone_UIViewAnimationDelegate :(org_xmlvm_iphone_UIViewAnimationDelegate*)animdelegate
{
	[animdelegate retain];
	[UIView setAnimationDelegate:animdelegate];
	[UIView setAnimationWillStartSelector:@selector(animationWillStart:context:)];
	[UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
}

@end
