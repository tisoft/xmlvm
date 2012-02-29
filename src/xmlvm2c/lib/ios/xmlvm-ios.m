#include "xmlvm-ios.h"

#ifdef XMLVM_NEW_IOS_API

typedef JAVA_OBJECT (*Func_ONSObject)(NSObject* obj);
void xmlvm_register_wrapper_creator(Func_ONSObject fn);

void xmlvm_set_associated_c_object(JAVA_OBJECT jobj, NSObject* obj);
JAVA_OBJECT xmlvm_get_associated_c_object_if_present(NSObject* obj);
JAVA_OBJECT xmlvm_get_associated_c_object(NSObject* obj);

static int numWrapperCreatorFuncs = 0;

static Func_ONSObject wrapperCreatorFunctions[MAX_WRAPPER_CREATOR_FUNCS];

void xmlvm_register_wrapper_creator(Func_ONSObject fn)
{
    if (numWrapperCreatorFuncs == MAX_WRAPPER_CREATOR_FUNCS) {
        XMLVM_INTERNAL_ERROR();
    }
    wrapperCreatorFunctions[numWrapperCreatorFuncs++] = fn;
}

static JAVA_OBJECT xmlvm_create_wrapping_c_object(NSObject* obj)
{
    
    int i = 0;
    for (i = 0; i < numWrapperCreatorFuncs; i++) {
        JAVA_OBJECT jobj = (*wrapperCreatorFunctions[i])(obj);
        if (jobj != JAVA_NULL) {
            return jobj;
        }
    }
    
    XMLVM_INTERNAL_ERROR();
    return JAVA_NULL;
}

@interface NSObject_members : NSObject {
@public org_xmlvm_ios_NSObject* wrappingCObj;
}
- (id) initWithWrappingCObj:(JAVA_OBJECT) obj;
@end

@implementation NSObject_members

- (id) initWithWrappingCObj:(JAVA_OBJECT) obj
{
    self = [super init];
    self->wrappingCObj = obj;
    return self;
}

@end


@interface NSObject (cat_org_xmlvm_ios_NSObject)
- (void) setWrappingCObject:(JAVA_OBJECT) obj;
- (NSObject_members*) getExtraMembers;
- (NSObject_members*) getExtraMembersIfPresent;
- (void) removeExtraMembers;
@end


@implementation NSObject (cat_org_xmlvm_ios_NSObject)

static char memberKey; // key for associative reference for member variables

- (void) setWrappingCObject:(JAVA_OBJECT) obj
{
    NSObject_members* members = (NSObject_members*) objc_getAssociatedObject(self, &memberKey);
    if (members != nil) {
        // Shouldn't occur
        XMLVM_INTERNAL_ERROR();
    }
    members = [[NSObject_members alloc] initWithWrappingCObj:obj];
    objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
    [members release];
}

- (NSObject_members*) getExtraMembers
{
    NSObject_members* members = nil;
    @synchronized(self) {
        NSAutoreleasePool* p = [[ NSAutoreleasePool alloc] init];
        members = (NSObject_members*) objc_getAssociatedObject(self, &memberKey);
        if (members == nil) {
            JAVA_OBJECT jobj = xmlvm_create_wrapping_c_object(self);
            members = [[NSObject_members alloc] initWithWrappingCObj:jobj];
            objc_setAssociatedObject(self, &memberKey, members, OBJC_ASSOCIATION_RETAIN);
            [members release];
        }
        [p release];
    }
    return members;
}

- (NSObject_members*) getExtraMembersIfPresent
{
    return (NSObject_members*) objc_getAssociatedObject(self, &memberKey);
}

- (void) removeExtraMembers
{
    objc_setAssociatedObject(self, &memberKey, nil, OBJC_ASSOCIATION_RETAIN);
}

@end


void xmlvm_set_associated_c_object(JAVA_OBJECT jobj, NSObject* obj)
{
    [obj setWrappingCObject:jobj];
}

JAVA_OBJECT xmlvm_get_associated_c_object_if_present(NSObject* obj)
{
    if (obj == nil) {
        return JAVA_NULL;
    }
    NSObject_members* extraMembers = [obj getExtraMembersIfPresent];
    return (extraMembers == nil) ? JAVA_NULL : extraMembers->wrappingCObj;
}

JAVA_OBJECT xmlvm_get_associated_c_object(NSObject* obj)
{
    if (obj == nil) {
        return JAVA_NULL;
    }
    return [obj getExtraMembers]->wrappingCObj;
}

static JAVA_OBJECT org_xmlvm_ios_NSObject_handlers;


static JAVA_OBJECT utf8_constant = JAVA_NULL;


void org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    java_lang_Object___INIT___(me);
    org_xmlvm_ios_NSObject* thiz = (org_xmlvm_ios_NSObject*) me;
    thiz->fields.org_xmlvm_ios_NSObject.wrappedObjCObj = wrappedObjCObj;
    xmlvm_set_associated_c_object(me, wrappedObjCObj);
}


NSString* toNSString(JAVA_OBJECT o)
{
    if (o == JAVA_NULL) {
        return nil;
    }
    if (utf8_constant == JAVA_NULL) {
        utf8_constant = xmlvm_create_java_string("UTF-8");
    }
    java_lang_String* s = (java_lang_String*) o;
    org_xmlvm_runtime_XMLVMArray* utf8 = java_lang_String_getBytes___java_lang_String(o, utf8_constant);
    JAVA_INT length = utf8->fields.org_xmlvm_runtime_XMLVMArray.length_;
    JAVA_ARRAY_BYTE* data = (JAVA_ARRAY_BYTE*) utf8->fields.org_xmlvm_runtime_XMLVMArray.array_;
    return [[NSString alloc] initWithBytes:data length:length encoding:NSUTF8StringEncoding];
}

JAVA_OBJECT fromNSString(NSString* str)
{
    if (str == nil) {
        return JAVA_NULL;
    }
    if (utf8_constant == JAVA_NULL) {
        utf8_constant = xmlvm_create_java_string("UTF-8");
    }
    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];
    java_lang_String* s = __NEW_java_lang_String();
    const char* chars = [str UTF8String];
    int length = strlen(chars);
    org_xmlvm_runtime_XMLVMArray* data = XMLVMArray_createSingleDimensionWithData(__CLASS_byte, length, chars);
    java_lang_String___INIT____byte_1ARRAY_java_lang_String(s, data, utf8_constant);
    [p release];
    return s;
}


#endif


@implementation DelegateWrapper

- (id) init
{
    [super init];
    sources = nil;
    source = nil;
    source_ = nil;
    return self;
}

- (void) dealloc
{
    [sources release];
    [super dealloc];
}

- (void) addSource: (JAVA_OBJECT) src_ : (NSObject*) src
{
    if (source == nil) {
        source = src;
        source_ = src_;
    }
    else {
        if (sources == nil) {
            sources = [[NSMutableDictionary alloc] init];
            NSValue* key = [[NSValue alloc] initWithBytes: &source objCType: @encode(NSObject*)];
            NSValue* value = [[NSValue alloc] initWithBytes: &source_ objCType: @encode(JAVA_OBJECT)];
            [sources setObject: value forKey: key];
            [key release];
        }
        
        NSValue* key = [[NSValue alloc] initWithBytes: &src objCType: @encode(NSObject*)];
        NSValue* value = [[NSValue alloc] initWithBytes: &src_ objCType: @encode(JAVA_OBJECT)];
        [sources setObject: value forKey: key];
        [key release];
    }
}

- (JAVA_OBJECT) getSource: (NSObject*) src
{
    if (sources == nil) {
        return source_;
    }
    
    NSValue* key = [[NSValue alloc] initWithBytes: &src objCType: @encode(NSObject*)];
    NSValue* value = [sources objectForKey: key];
    JAVA_OBJECT src_ = [value pointerValue];
    [key release];
    return src_;
}

@end
