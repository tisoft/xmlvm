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
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSSelector.h"

@class java_lang_Object;
@class java_lang_String;


typedef NSObject org_xmlvm_iphone_NSObject;

@interface NSObject (cat_org_xmlvm_iphone_NSObject) 

+ (void) performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean
              :(java_lang_Object*) target
              :(java_lang_String*) method
              :(java_lang_Object*) arg
              :(BOOL) waitUntilDone;

+ (void) performSelector___java_lang_Object_java_lang_String_java_lang_Object_double
			  :(java_lang_Object*) target
			  :(java_lang_String*) method
			  :(java_lang_Object*) arg
			  :(double) delay;

+ (void) performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_double
            :(java_lang_Object<org_xmlvm_iphone_NSSelector>*) selector
            :(java_lang_Object*) arg
            :(double) delay;

+ (void) performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean
:(java_lang_Object<org_xmlvm_iphone_NSSelector>*) selector
:(java_lang_Object*) arg
:(BOOL) waitUntilDone;


- (void) __init_org_xmlvm_iphone_NSObject__;
- (void) release__;
- (NSObject*) retain__;
- (void) dealloc__;

@end
