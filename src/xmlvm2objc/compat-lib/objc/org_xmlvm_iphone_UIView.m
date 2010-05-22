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
#import "org_xmlvm_iphone_UIWindow.h"

// UIView
//----------------------------------------------------------------------------

@implementation org_xmlvm_iphone_UIView : UIView

- (void) dealloc
{
	[self->backgroundImage release];
	[super dealloc];
}

/*
 * We have to use inheritance to override drawRect because we cannot achieve
 * the same with categories.
 */

- (void) drawRect:(CGRect)rect
{
	[self->backgroundImage drawInRect:rect];

	org_xmlvm_iphone_CGRect* redrawRect = [[org_xmlvm_iphone_CGRect alloc] init];
	redrawRect->origin_org_xmlvm_iphone_CGPoint->x_float = rect.origin.x;
	redrawRect->origin_org_xmlvm_iphone_CGPoint->y_float = rect.origin.y;
	redrawRect->size_org_xmlvm_iphone_CGSize->width_float = rect.size.width;
	redrawRect->size_org_xmlvm_iphone_CGSize->height_float = rect.size.height;

	if (self->drawDelegate != nil) {
		[self->drawDelegate xmlvmDraw___org_xmlvm_iphone_CGRect:redrawRect];
	}
	else {
		[self drawRect___org_xmlvm_iphone_CGRect: redrawRect];
	}
	
	[redrawRect release];
}

- (void) setBackgroundImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
	[image retain];
	[self->backgroundImage release];
	if (image == JAVA_NULL) {
		self->backgroundImage = nil;
	}
	else {
		self->backgroundImage = image;
		[self setBackgroundColor: [UIColor clearColor]];
	}
	[self setNeedsDisplay];
}

- (UIImage*) getBackgroundImage__
{
	return [self->backgroundImage retain];
}

- (void) setDrawDelegate___java_lang_Object: (java_lang_Object*) delegate
{
	// We keep a weak reference (don't do a retain on delegate)
	// We do this because the delegate will only exist as long as this UIView
	// and by not doing a retain we avoid cycles
	self->drawDelegate = delegate == JAVA_NULL ? nil : delegate;
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
	org_xmlvm_iphone_CGRect* rect = [[org_xmlvm_iphone_CGRect alloc] init];
	rect->origin_org_xmlvm_iphone_CGPoint->x_float = self.bounds.origin.x;
	rect->origin_org_xmlvm_iphone_CGPoint->y_float = self.bounds.origin.y;
	rect->size_org_xmlvm_iphone_CGSize->width_float = self.bounds.size.width;
	rect->size_org_xmlvm_iphone_CGSize->height_float = self.bounds.size.height;
	return rect;
}

- (void) setBounds___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) bounds
{
	self.bounds = [bounds getCGRect];
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
	[self setBackgroundColor:col];
}

- (void) setClearsContextBeforeDrawing___boolean :(int)clear
{
	[self setClearsContextBeforeDrawing:clear];
}

- (void) setUserInteractionEnabled___boolean:(int) uinteraction {
    [self setUserInteractionEnabled:uinteraction];
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
	org_xmlvm_iphone_CGRect * res = [[org_xmlvm_iphone_CGRect alloc] init];
	CGRect frame = [self frame];
	res->origin_org_xmlvm_iphone_CGPoint->x_float = frame.origin.x;
	res->origin_org_xmlvm_iphone_CGPoint->y_float = frame.origin.y;
	res->size_org_xmlvm_iphone_CGSize->width_float = frame.size.width;
	res->size_org_xmlvm_iphone_CGSize->height_float = frame.size.height;
	return res;
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

- (org_xmlvm_iphone_CGSize*) sizeThatFits___org_xmlvm_iphone_CGSize:(org_xmlvm_iphone_CGSize*) size
{
	return [[org_xmlvm_iphone_CGSize alloc] initWithCGSize:[self sizeThatFits:[size getCGSize]]];
}


- (org_xmlvm_iphone_CGPoint*) convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIView*) view
{
	CGPoint to = [self convertPoint:[point getCGPoint] fromView:view];
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:to];
}

- (org_xmlvm_iphone_CGPoint*) convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIView*) view
{
	CGPoint to = [self convertPoint:[point getCGPoint] toView:view];
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:to];
}

- (org_xmlvm_iphone_CGRect*) convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIView*) view
{
	CGRect to = [self convertRect:[rect getCGRect] fromView:view];
	return [[org_xmlvm_iphone_CGRect alloc] initWithCGRect:to];
}

- (org_xmlvm_iphone_CGRect*) convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIView*) view
{
	CGRect to = [self convertRect:[rect getCGRect] toView:view];
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
	[UIView setAnimationWillStartSelector:@selector(animationWillStart)];
	[UIView setAnimationDidStopSelector:@selector(animationDidStop)];
}

@end
