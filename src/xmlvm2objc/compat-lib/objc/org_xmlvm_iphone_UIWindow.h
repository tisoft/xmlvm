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
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UIEvent.h"

// UIWindow
//----------------------------------------------------------------------------

@interface org_xmlvm_iphone_UIWindow : UIWindow 
- (void) sendEvent___org_xmlvm_iphone_UIEvent:(org_xmlvm_iphone_UIEvent*)event;
@end

@interface UIWindow (cat_org_xmlvm_iphone_UIWindow)
- (void) __init_org_xmlvm_iphone_UIWindow__;
- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view;
- (void) makeKeyAndVisible__;
- (org_xmlvm_iphone_CGPoint*) convertPointFromWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIWindow*) window;
- (org_xmlvm_iphone_CGPoint*) convertPointToWindow___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGPoint*)point :(org_xmlvm_iphone_UIWindow*) window;
- (org_xmlvm_iphone_CGRect*) convertRectFromWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIWindow*) window;
- (org_xmlvm_iphone_CGRect*) convertRectToWindow___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIWindow:(org_xmlvm_iphone_CGRect*)rect :(org_xmlvm_iphone_UIWindow*) window;
@end
