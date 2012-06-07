
//XMLVM_BEGIN_IMPLEMENTATION
@interface EASession (EASessionWrapperCategory)
+ (void) initialize_class;
@end

@implementation EASession (EASessionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EASession.classInitialized)
        __INIT_org_xmlvm_ios_EASession();
}
@end

void org_xmlvm_ios_EASession_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EASession class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EASession();
        org_xmlvm_ios_EASession_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EASession]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EASession]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession___INIT____org_xmlvm_ios_EAAccessory_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    EASession* var0 = [[EASession alloc] initWithAccessory:(EAAccessory*) (((org_xmlvm_ios_EAAccessory*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forProtocol:ObjCVar2];
    [ObjCVar2 release];

    org_xmlvm_ios_EASession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession___INIT___]
    EASession* var0 = [[EASession alloc ] init];
    org_xmlvm_ios_EASession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession___INIT___]

    EASession* var0 = [[EASession alloc]init];

    org_xmlvm_ios_EASession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession_getAccessory__]

    XMLVM_VAR_THIZ;
    EAAccessory* var0 = [thiz accessory];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession_getProtocolString__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz protocolString];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession_getInputStream__]

    XMLVM_VAR_THIZ;
    NSInputStream* var0 = [thiz inputStream];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EASession_getOutputStream__]

    XMLVM_VAR_THIZ;
    NSOutputStream* var0 = [thiz outputStream];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
