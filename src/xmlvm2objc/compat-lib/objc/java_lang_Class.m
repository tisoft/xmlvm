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

#import "java_lang_Class.h"
#import "java_lang_reflect_Field.h"

#import <objc/runtime.h>



// java.lang.Class
//----------------------------------------------------------------------------
@implementation java_lang_Class;

- (void) __init_java_lang_Class
{
}

- (java_lang_String*) getName
{
	NSMutableString* mangledName = [NSMutableString stringWithCString: class_getName(clazz) encoding: NSASCIIStringEncoding];
	// TODO the substitution of "." for "_" is a bit simplistic and might not yield the correct result
	// (if the simple name contains "_"). For a proper solution every class would need to register its
	// Java-based simple name in some global data structure.
	NSMutableString* simpleName = [mangledName stringByReplacingOccurrencesOfString: @"_" withString: @"."];
	[simpleName retain];
	return simpleName;
}

- (NSObject*) newInstance
{
	// Instantiate object
	NSObject* obj = (NSObject*) class_createInstance(clazz, class_getInstanceSize(clazz));
	// Call default constructor
	NSMutableString* mangledName = [NSMutableString stringWithCString: class_getName(clazz) encoding: NSASCIIStringEncoding];
    NSMutableString* constructor = [NSMutableString stringWithString: @"__init_"];
	[constructor appendString: mangledName];
	SEL sel = NSSelectorFromString(constructor);
	NSMethodSignature * sig = [clazz instanceMethodSignatureForSelector:sel];
	NSInvocation* inv = [NSInvocation invocationWithMethodSignature: sig];
	[inv setTarget: obj];
	[inv setSelector: sel];
	[inv invoke];
	return obj;
}

+ (java_lang_Class*) forName___java_lang_String :(java_lang_String*) className;
{
	java_lang_Class* classWrapper = [[java_lang_Class alloc] init];
	NSString* mangledName = [className stringByReplacingOccurrencesOfString: @"." withString: @"_"];
	mangledName = [mangledName stringByReplacingOccurrencesOfString: @"$" withString: @"_"];
	classWrapper->clazz = NSClassFromString(mangledName);
	//[mangledName release];
	return classWrapper;
}

- (NSMutableArray*) getDeclaredFields
{
	unsigned int count, i;

	NSMutableArray* fields = [[NSMutableArray alloc] init];
    Method* m = class_copyMethodList(object_getClass(clazz), &count);
	for (i = 0; i < count; i++) {
		NSString* name = [NSString stringWithCString: sel_getName(method_getName(m[i])) encoding: NSASCIIStringEncoding];
		if ([name hasPrefix: @"_GET_"]) {
			NSString* fieldName = [name substringFromIndex: 5];
			// TODO the isStatic: TRUE is not necessarily true. We also return instance members here
            java_lang_reflect_Field* f = [[java_lang_reflect_Field alloc] initWithName: fieldName isStatic: TRUE];
			[fields addObject: f];
			//[fieldName release];
		}
	}
    free(m);
	return fields;
}


@end
