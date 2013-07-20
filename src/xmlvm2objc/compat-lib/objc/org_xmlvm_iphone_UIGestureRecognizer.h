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
#import "org_xmlvm_iphone_NSSelector.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_UIEvent.h"
#import "org_xmlvm_iphone_UITouch.h"

@class org_xmlvm_iphone_UIGestureRecognizerDelegate;
@class org_xmlvm_iphone_UIView;


#define org_xmlvm_iphone_UIGestureRecognizer UIGestureRecognizer
@interface UIGestureRecognizer (cat_org_xmlvm_iphone_UIGestureRecognizer)   

- (void) __init_org_xmlvm_iphone_UIGestureRecognizer___org_xmlvm_iphone_NSSelector :(java_lang_Object<org_xmlvm_iphone_NSSelector>*)n1;
- (int) getState__;
- (org_xmlvm_iphone_UIGestureRecognizerDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIGestureRecognizerDelegate :(org_xmlvm_iphone_UIGestureRecognizerDelegate*)n1;
- (int) isEnabled__;
- (void) setEnabled___boolean :(int)n1;
- (org_xmlvm_iphone_UIView*) getView__;
- (int) isCancelsTouchesInView__;
- (void) setCancelsTouchesInView___boolean :(int)n1;
- (int) isDelaysTouchesBegan__;
- (void) setDelaysTouchesBegan___boolean :(int)n1;
- (int) isDelaysTouchesEnded__;
- (void) setDelaysTouchesEnded___boolean :(int)n1;
- (void) addTarget___org_xmlvm_iphone_NSSelector :(java_lang_Object<org_xmlvm_iphone_NSSelector>*)n1;
- (void) removeTarget___org_xmlvm_iphone_NSSelector :(java_lang_Object<org_xmlvm_iphone_NSSelector>*)n1;
- (void) requireGestureRecognizerToFail___org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1;
- (org_xmlvm_iphone_CGPoint*) locationInView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (int) numberOfTouches__;
- (org_xmlvm_iphone_CGPoint*) locationOfTouch___int_org_xmlvm_iphone_UIView :(int)n1 :(org_xmlvm_iphone_UIView*)n2;

@end

