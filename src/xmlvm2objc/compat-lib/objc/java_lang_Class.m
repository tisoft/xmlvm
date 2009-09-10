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
	return (NSObject*) class_createInstance(clazz, class_getInstanceSize(clazz));
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
