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

#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"

// java.lang.Object
//----------------------------------------------------------------------------
@implementation NSObject (cat_org_xmlvm_iphone_NSObject) 

+ (void) performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean
              :(java_lang_Object*) target
              :(java_lang_String*) method
              :(java_lang_Object*) arg
              :(BOOL) waitUntilDone
{
	NSMutableString* selectorName = [[NSMutableString alloc] initWithString:method];
	[selectorName appendString:@"___java_lang_Object:"];
	SEL selector = NSSelectorFromString(selectorName);
	
	[target
        performSelectorOnMainThread:selector
        withObject:arg
        waitUntilDone:waitUntilDone];
	[selectorName release];
}

+ (void) performSelector___java_lang_Object_java_lang_String_java_lang_Object_double
			  :(java_lang_Object*) target
			  :(java_lang_String*) method
			  :(java_lang_Object*) arg
			  :(double) delay;
{
	NSMutableString* selectorName = [[NSMutableString alloc] initWithString:method];
	[selectorName appendString:@"___java_lang_Object:"];
	SEL selector = NSSelectorFromString(selectorName);
	[target performSelector:selector withObject:arg afterDelay:delay];
	[selectorName release];
}

- (void) __init_org_xmlvm_iphone_NSObject__
{
}

- (void) release__
{
	[self release];
}

- (NSObject*) retain__
{
	// Yes, we DO need a double retain, since the first retain will be undo from the java code!
	return [[self retain] retain];
}

- (void) dealloc__
{
}

@end
