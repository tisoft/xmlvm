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

#import "org_xmlvm_iphone_UIViewAnimationDelegate.h"



@implementation org_xmlvm_iphone_UIViewAnimationDelegateWrapper

- (id) initWithAnimationDelegate:(java_lang_Object<org_xmlvm_iphone_UIViewAnimationDelegate> *) delegate
{
    [self init];
    self->delegate = delegate;
    [delegate retain];
    return self;
}

- (void)dealloc {
    [delegate release];
    [super dealloc];
}


- (void) animationWillStart:(NSString*)animationID context:(void *)context
{
    [delegate animationDidStart___java_lang_String_java_lang_Object:animationID :context];
}

- (void) animationDidStop:(NSString*)animationID finished:(NSNumber *)finished context:(void *)context
{
    [delegate animationDidStop___java_lang_String_boolean_java_lang_Object:animationID :[finished boolValue] :context];
}

@end

