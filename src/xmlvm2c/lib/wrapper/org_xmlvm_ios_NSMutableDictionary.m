
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableDictionary (NSMutableDictionaryWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableDictionary (NSMutableDictionaryWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableDictionary.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableDictionary();
}
@end

void org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableDictionary class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableDictionary();
        org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableDictionary]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableDictionary]
__DELETE_org_xmlvm_ios_NSDictionary(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____int]

    NSMutableDictionary* var0 = [[NSMutableDictionary alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT___]
    NSMutableDictionary* var0 = [[NSMutableDictionary alloc ] init];
    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____Object_1ARRAY_Object_1ARRAY_int]
XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    XMLVM_VAR_OBJECT_ARRAY(a2, n2); 
    
    NSMutableDictionary* var0 = [[NSMutableDictionary alloc] initWithObjects:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forKeys:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n3];
    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____java_util_Map_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____java_util_List_java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSMutableDictionary* var0 = [[NSMutableDictionary alloc] initWithObjects:ObjCVar1 forKeys:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];

    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableDictionary* var0 = [[NSMutableDictionary alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT____org_xmlvm_ios_NSURL]

    NSMutableDictionary* var0 = [[NSMutableDictionary alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT___]
    NSMutableDictionary* var0 = [[NSMutableDictionary alloc ] init];
    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary___INIT___]

    NSMutableDictionary* var0 = [[NSMutableDictionary alloc]init];

    org_xmlvm_ios_NSMutableDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_removeObjectForKey___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectForKey:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_setObject___java_lang_Object_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_addEntriesFromDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_removeAllObjects__]

    XMLVM_VAR_THIZ;
    [thiz removeAllObjects];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_removeObjectsForKeys___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  removeObjectsForKeys:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_setDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_dictionaryWithCapacity___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableDictionary_setValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER
