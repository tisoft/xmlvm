
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNotification (NSNotificationWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNotification (NSNotificationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNotification.classInitialized)
        __INIT_org_xmlvm_ios_NSNotification();
}
@end

void org_xmlvm_ios_NSNotification_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNotification class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNotification();
        org_xmlvm_ios_NSNotification_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNotification]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNotification]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification___INIT___]
    NSNotification* var0 = [[NSNotification alloc ] init];
    org_xmlvm_ios_NSNotification_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification___INIT___]

    NSNotification* var0 = [[NSNotification alloc]init];

    org_xmlvm_ios_NSNotification_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification_object__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz object];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification_notificationWithName___java_lang_String_java_lang_Object]
NSString * ObjCVar1 = toNSString(n1);
    
    NSNotification* var0 =  [NSNotification  notificationWithName:ObjCVar1 object:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotification_notificationWithName___java_lang_String_java_lang_Object_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
