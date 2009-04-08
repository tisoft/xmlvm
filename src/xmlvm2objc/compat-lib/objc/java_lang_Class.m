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
	return simpleName;
}

+ (java_lang_Class*) forName___java_lang_String :(java_lang_String*) className;
{
	java_lang_Class* classWrapper = [[[java_lang_Class alloc] init] autorelease];
	NSString* mangledName = [className stringByReplacingOccurrencesOfString: @"." withString: @"_"];
	mangledName = [mangledName stringByReplacingOccurrencesOfString: @"$" withString: @"_"];
	classWrapper->clazz = NSClassFromString(mangledName);
	return classWrapper;
}

- (NSMutableArray*) getDeclaredFields
{
	unsigned int count, i;

	NSMutableArray* fields = [[[NSMutableArray alloc] init] autorelease];
	// TODO here we look only for static methods with prefix _GET_STATIC_. We should also return instance fields.
    Method* m = class_copyMethodList(object_getClass(clazz), &count);
	for (i = 0; i < count; i++) {
		NSString* name = [NSString stringWithCString: sel_getName(method_getName(m[i])) encoding: NSASCIIStringEncoding];
		if ([name hasPrefix: @"_GET_STATIC_"]) {
			NSString* fieldName = [name substringFromIndex: 12];
            java_lang_reflect_Field* f = [[[java_lang_reflect_Field alloc] initWithName: fieldName isStatic: TRUE] autorelease];
			[fields addObject: f];
		}
	}
    free(m);
	return fields;
}


@end
