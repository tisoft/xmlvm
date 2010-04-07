#import "java_util_Map_Entry_Impl.h"

@implementation java_util_Map_Entry_Impl

- (id) initWithKey:(java_lang_Object*)key andValue:(java_lang_Object*)value {
	[super init];
	
	[key retain];
	self->myKey = key;
	[value retain];
	self->myValue = value;
	
	return self;
}

- (java_lang_Object*) getKey__ {
	return [myKey retain];
}

- (java_lang_Object*) getValue__ {
	return [myValue retain];
}

- (void)dealloc {
	[myKey release];
	[myValue release];
	[super dealloc];
}

@end
