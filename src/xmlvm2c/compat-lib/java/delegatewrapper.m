/*
 * Copyright (c) 2002-2011 by XMLVM.org
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

#include "delegatewrapper.h"

@implementation DelegateWrapper

- (id) init
{
    [super init];
    sources = [[NSMutableDictionary alloc] init];
    return self;
}

- (void) dealloc
{
    [sources release];
    [super dealloc];
}

- (void) addSource: (JAVA_OBJECT) source : (NSObject*) source_o
{
    NSValue* key = [[NSValue alloc] initWithBytes: &source_o objCType: @encode(NSObject*)];
    NSValue* value = [[NSValue alloc] initWithBytes: &source objCType: @encode(JAVA_OBJECT)];
    [sources setObject: value forKey: key];
    [key release];
}

- (JAVA_OBJECT) getSource: (NSObject*) source_o
{
    NSValue* key = [[NSValue alloc] initWithBytes: &source_o objCType: @encode(NSObject*)];
    NSValue* value = [sources objectForKey: key];
    JAVA_OBJECT source = [value pointerValue];
    [key release];
    return source;
}

@end
