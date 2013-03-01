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
#import "java_util_List.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_CGAffineTransform.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_NSDate.h"
#import "org_xmlvm_iphone_UIViewAnimationDelegate.h"
#import "org_xmlvm_iphone_CALayer.h"
#import "org_xmlvm_iphone_UIResponder.h"
@class org_xmlvm_iphone_UIWindow;
@class org_xmlvm_iphone_UIGestureRecognizer;

// UIView
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIView : UIView 
- (void) drawRect___org_xmlvm_iphone_CGRect:(org_xmlvm_iphone_CGRect*)rect;
- (void) layoutSubviews__;
@end

@interface UIView (cat_org_xmlvm_iphone_UIView)
- (void) __init_org_xmlvm_iphone_UIView__;
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setBounds___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) bounds;
- (org_xmlvm_iphone_CGRect*) getBounds__;
- (void) setFrame___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*) frame;
- (void) setCenter___org_xmlvm_iphone_CGPoint:(org_xmlvm_iphone_CGPoint*) point;
- (org_xmlvm_iphone_CGPoint*) getCenter__;
- (void) setLocation___float_float: (int)x :(int)y;
- (void) setSize___float_float: (int)width :(int)height;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;
- (void) insertSubview___org_xmlvm_iphone_UIView_int :(org_xmlvm_iphone_UIView*) view :(int) idx;
- (void) removeFromSuperview__;
- (void) sendSubviewToBack___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) subView;
- (void) bringSubviewToFront___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*) view;
- (java_util_List*) getSubviews__;
- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)transform;
- (org_xmlvm_iphone_CGAffineTransform*) getTransform__;
- (void) setNeedsDisplay__;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (int) isOpaque__;
- (void) setOpaque___boolean :(int) opaque;
- (int) isHidden__;
- (void) setHidden___boolean :(int) hid;
- (void) setBackgroundColor___org_xmlvm_iphone_UIColor:(org_xmlvm_iphone_UIColor*) col;
- (void) setClearsContextBeforeDrawing___boolean :(int) clear;
- (void) setUserInteractionEnabled___boolean:(int) uinteraction;
- (int) isUserInteractionEnabled__;
- (void) setMultipleTouchEnabled___boolean:(int)multipleTouchEnabled;
- (int) isMultipleTouchEnabled__;
- (void) setHidden___boolean:(int) uinteraction;
- (void) setContentMode___int:(int) mode;
- (int) getContentMode__;
- (void) setClipsToBounds___boolean:(int) clips;
- (org_xmlvm_iphone_CGRect*) getFrame__;
- (org_xmlvm_iphone_UIView*) getSuperview__;
- (org_xmlvm_iphone_UIColor*) getBackgroundColor__;
- (float) getAlpha__;
- (void) setAlpha___float :(float)n1;
- (int) getTag__;
- (void) setTag___int :(int)tag;
- (UIWindow*) getWindow__;
- (org_xmlvm_iphone_CALayer*) getLayer__;
- (void) sizeToFit__;
- (void) setAutoresizingMask___int:(int)mask;
- (int) getAutoresizingMask__;
- (void) setAutoresizesSubviews___boolean:(int)aresize;
- (int) isAutoresizesSubviews__;
- (void) setNeedsLayout__;
- (void) layoutIfNeeded__;
- (org_xmlvm_iphone_CGSize*) sizeThatFits___org_xmlvm_iphone_CGSize:(org_xmlvm_iphone_CGSize*) size;
- (org_xmlvm_iphone_CGPoint*) convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIView*) view;
- (org_xmlvm_iphone_CGPoint*) convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIView*) view;
- (org_xmlvm_iphone_CGRect*) convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIView*) view;
- (org_xmlvm_iphone_CGRect*) convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIView*) view;
- (void) addGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1;
- (void) removeGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1;
- (java_util_List*) getGestureRecognizers__;
- (void) setGestureRecognizers___java_util_List :(java_util_List*)n1;
// Callback methods
- (void) didAddSubview___org_xmlvm_iphone_UIView:(org_xmlvm_iphone_UIView*) subview;
- (void) didMoveToWindow__;
- (void) didMoveToSuperview__;
- (void) willRemoveSubview___org_xmlvm_iphone_UIView:(org_xmlvm_iphone_UIView*) subview;
- (void) willMoveToWindow___org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_UIWindow*) window;
- (void) willMoveToSuperview___org_xmlvm_iphone_UIView:(org_xmlvm_iphone_UIView*) superview;
// View animations
+ (void) beginAnimations___java_lang_String :(NSString*)animationID;
+ (void) beginAnimations___java_lang_String_java_lang_Object :(NSString*)animationID : (java_lang_Object*) context;
+ (void) commitAnimations__;
+ (void) setAnimationStartDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)startTime;
+ (void) setAnimationsEnabled___boolean :(BOOL)enabled;
+ (void) setAnimationDuration___double :(double)duration;
+ (void) setAnimationDelay___double :(double)delay;
+ (void) setAnimationCurve___int :(int)curve;
+ (void) setAnimationRepeatCount___float :(float)repeatCount;
+ (void) setAnimationRepeatAutoreverses___boolean :(int)repeatAutoreverses;
+ (void) setAnimationBeginsFromCurrentState___boolean :(int)fromCurrentState;
+ (void) setAnimationTransitionForView___int_org_xmlvm_iphone_UIView_boolean :(int)transition :(org_xmlvm_iphone_UIView*)view :(BOOL)cache;
+ (int) areAnimationsEnabled__;
+ (void) setAnimationDelegate___org_xmlvm_iphone_UIViewAnimationDelegate :(java_lang_Object<org_xmlvm_iphone_UIViewAnimationDelegate>*)animdelegate;
@end
