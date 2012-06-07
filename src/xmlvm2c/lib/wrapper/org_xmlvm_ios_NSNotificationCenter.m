
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNotificationCenter (NSNotificationCenterWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNotificationCenter (NSNotificationCenterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNotificationCenter.classInitialized)
        __INIT_org_xmlvm_ios_NSNotificationCenter();
}
@end

void org_xmlvm_ios_NSNotificationCenter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNotificationCenter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNotificationCenter();
        org_xmlvm_ios_NSNotificationCenter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNotificationCenter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNotificationCenter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter___INIT___]
    NSNotificationCenter* var0 = [[NSNotificationCenter alloc ] init];
    org_xmlvm_ios_NSNotificationCenter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter___INIT___]

    NSNotificationCenter* var0 = [[NSNotificationCenter alloc]init];

    org_xmlvm_ios_NSNotificationCenter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_defaultCenter__]

    NSObject* var0 =  [NSNotificationCenter defaultCenter];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_addObserver___java_lang_Object_org_xmlvm_ios_SEL_java_lang_String_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_postNotification___org_xmlvm_ios_NSNotification]

    XMLVM_VAR_THIZ;
    [thiz  postNotification:(NSNotification*) (((org_xmlvm_ios_NSNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  postNotificationName:ObjCVar1 object:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_postNotificationName___java_lang_String_java_lang_Object_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_removeObserver___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObserver:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_removeObserver___java_lang_Object_java_lang_String_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  removeObserver:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj name:ObjCVar2 object:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationCenter_addObserverForName___java_lang_String_java_lang_Object_org_xmlvm_ios_NSOperationQueue_java_lang_Object]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  addObserverForName:ObjCVar1 object:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj queue:(NSOperationQueue*) (((org_xmlvm_ios_NSOperationQueue*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) usingBlock:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
