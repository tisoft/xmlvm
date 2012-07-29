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
#import "java_lang_Object.h"

@class org_xmlvm_iphone_UITouch;
@class java_lang_Object;
@class org_xmlvm_iphone_UIGestureRecognizer;

@interface org_xmlvm_iphone_GKSessionDelegate : java_lang_Object<UIGestureRecognizerDelegate>

- (int) gestureRecognizerShouldBegin___org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1;
- (int) shouldRecognizeSimultaneouslyWithGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer_org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1 :(org_xmlvm_iphone_UIGestureRecognizer*)n2;
- (int) shouldReceiveTouch___org_xmlvm_iphone_UIGestureRecognizer_org_xmlvm_iphone_UITouch :(org_xmlvm_iphone_UIGestureRecognizer*)n1 :(org_xmlvm_iphone_UITouch*)n2;

@end
