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

#import "java_lang_Class.h"
#import "java_lang_reflect_Field.h"
#import "java_lang_reflect_Constructor.h"
#import "java_lang_ClassNotFoundException.h"
#import <objc/runtime.h>



// java.lang.Class
//----------------------------------------------------------------------------
@implementation java_lang_Class;

- (id) initWithClass: (Class) c
{
	[super init];
	self->clazz = c;
	return self;
}

- (void) __init_java_lang_Class__
{
}

- (BOOL) desiredAssertionStatus__
{
	return false;
}

- (java_lang_String*) getName__
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	NSMutableString* mangledName = [NSMutableString stringWithCString: class_getName(clazz) encoding: NSASCIIStringEncoding];
	if ([mangledName isEqualToString:@"NSCFString"]) {
		mangledName = @"java_lang_String";
	}
	//TODO probably check for other classes such as java_util_Map, etc
	
	// TODO the substitution of "." for "_" is a bit simplistic and might not yield the correct result
	// (if the simple name contains "_"). For a proper solution every class would need to register its
	// Java-based simple name in some global data structure.
	NSMutableString* simpleName = [mangledName stringByReplacingOccurrencesOfString: @"_" withString: @"."];
	[simpleName retain];
	[pool release];
	return simpleName;
}

- (NSObject*) newInstance__
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	// Instantiate object
	NSObject* obj = (NSObject*) class_createInstance(clazz, class_getInstanceSize(clazz));
	[obj init];
	// Call default constructor
	NSMutableString* mangledName = [NSMutableString stringWithCString: class_getName(clazz) encoding: NSASCIIStringEncoding];
    NSMutableString* constructor = [NSMutableString stringWithString: @"__init_"];
	[constructor appendString: mangledName];
	[constructor appendString: @"__"];
	SEL sel = NSSelectorFromString(constructor);
	NSMethodSignature * sig = [clazz instanceMethodSignatureForSelector:sel];
	NSInvocation* inv = [NSInvocation invocationWithMethodSignature: sig];
	[inv setTarget: obj];
	[inv setSelector: sel];
	[inv invoke];
	[pool release];
	return obj;
}

+ (java_lang_Class*) forName___java_lang_String :(java_lang_String*) className;
{
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	NSString* mangledName = [className stringByReplacingOccurrencesOfString: @"." withString: @"_"];
	mangledName = [mangledName stringByReplacingOccurrencesOfString: @"$" withString: @"_"];
	Class theClass = NSClassFromString(mangledName);
	if (theClass == nil) {
		[pool release];
		java_lang_ClassNotFoundException* ex = [[java_lang_ClassNotFoundException alloc] init];
		[ex __init_java_lang_ClassNotFoundException__];
		@throw ex;
	}
	java_lang_Class* classWrapper = [[java_lang_Class alloc] init];
	classWrapper->clazz = theClass;
	[pool release];
	return classWrapper;
}

- (XMLVMArray*) getDeclaredFields__
{
	unsigned int count, field_count, i;

	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    Method* m = class_copyMethodList(object_getClass(clazz), &count);
	field_count = 0;
	for (i = 0; i < count; i++) {
		NSString* name = [[NSString alloc] initWithCString: sel_getName(method_getName(m[i])) encoding: NSASCIIStringEncoding];
		if ([name hasPrefix: @"_GET_"]) {
			field_count++;
		}
		[name release];
	}
	XMLVMArray* fields = [XMLVMArray createSingleDimensionWithType:0 andSize:field_count];
	int idx = 0;
	for (i = 0; i < count; i++) {
		NSString* name = [[NSString alloc] initWithCString: sel_getName(method_getName(m[i])) encoding: NSASCIIStringEncoding];
		if ([name hasPrefix: @"_GET_"]) {
			NSString* fieldName = [name substringFromIndex: 5];
			// TODO the isStatic: TRUE is not necessarily true. We also return instance members here
            java_lang_reflect_Field* f = [[java_lang_reflect_Field alloc] initWithName: fieldName isStatic: TRUE];
			fields->array.o[idx++] = f;
		}
		[name release];
	}
    free(m);
    [pool release];
	return fields;
}

- (java_lang_reflect_Constructor*) getConstructor___java_lang_Class_ARRAYTYPE :(XMLVMArray*) signature
{
	unsigned int count, i;

	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
	NSMutableString* mangledConstructorName = [[NSMutableString alloc] init];
	[mangledConstructorName appendString: @"__init_"];
	NSMutableString* name = [[NSMutableString alloc] initWithCString: class_getName(clazz) encoding: NSASCIIStringEncoding];
	[mangledConstructorName appendString: name];
	[name release];
	[mangledConstructorName appendString: @"__"];
	
	for (i = 0; i < [signature count]; i++) {
		NSMutableString* t = [signature->array.o[i] getName__];
		NSMutableString* mt = [t stringByReplacingOccurrencesOfString: @"." withString: @"_"];
		[t release];
		[mangledConstructorName appendString:@"_"];
		[mangledConstructorName appendString:mt];
	}
	
	for (i = 0; i < [signature count]; i++) {
		[mangledConstructorName appendString:@":"];
	}

	//TODO make sure that this constructor actually exists for clazz
	
	java_lang_reflect_Constructor* c = [[java_lang_reflect_Constructor alloc] initWithClass:self
	                                        andSignature:signature andMangledConstructorName:mangledConstructorName];
	[mangledConstructorName release];
	[pool release];
	return c;
}

@end
