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

#import "org_xmlvm_iphone_UITouch.h"
#import "org_xmlvm_iphone_UIGestureRecognizer.h"
#import "org_xmlvm_iphone_UIGestureRecognizerDelegate.h"
#import "org_xmlvm_iphone_NSObject.h"

@implementation org_xmlvm_iphone_UIGestureRecognizerDelegate

- (int) gestureRecognizerShouldBegin___org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1
{
    return YES;
}

- (int) shouldRecognizeSimultaneouslyWithGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer_org_xmlvm_iphone_UIGestureRecognizer :(org_xmlvm_iphone_UIGestureRecognizer*)n1 :(org_xmlvm_iphone_UIGestureRecognizer*)n2 {
    return YES;
}

- (int) shouldReceiveTouch___org_xmlvm_iphone_UIGestureRecognizer_org_xmlvm_iphone_UITouch :(org_xmlvm_iphone_UIGestureRecognizer*)n1 :(org_xmlvm_iphone_UITouch*)n2
{
    return YES;
}


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    return [self shouldReceiveTouch___org_xmlvm_iphone_UIGestureRecognizer_org_xmlvm_iphone_UITouch:gestureRecognizer :touch];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return [self shouldRecognizeSimultaneouslyWithGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer_org_xmlvm_iphone_UIGestureRecognizer:gestureRecognizer :otherGestureRecognizer];
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return [self gestureRecognizerShouldBegin___org_xmlvm_iphone_UIGestureRecognizer:gestureRecognizer];
}

@end
