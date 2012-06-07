
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSSocketPort (NSSocketPortWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSSocketPort (NSSocketPortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSSocketPort.classInitialized)
        __INIT_org_xmlvm_ios_NSSocketPort();
}
@end

void org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPort_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSSocketPort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSSocketPort();
        org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSSocketPort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSSocketPort]
__DELETE_org_xmlvm_ios_NSPort(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT___]

    NSSocketPort* var0 = [[NSSocketPort alloc]init];

    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT____short]

    NSSocketPort* var0 = [[NSSocketPort alloc] initWithTCPPort:n1];
    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT____int_int_int_org_xmlvm_ios_NSData_org_xmlvm_ios_NSSocketPort_Location]

    if((org_xmlvm_ios_NSSocketPort_Location*) n5 == org_xmlvm_ios_NSSocketPort_Location_GET_Default())
    {
    NSSocketPort* var0 = [[NSSocketPort alloc] initWithProtocolFamily:n1 socketType:n2 protocol:n3 address:(NSData*) (((org_xmlvm_ios_NSData*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSSocketPort_Location*) n5 == org_xmlvm_ios_NSSocketPort_Location_GET_Remote())
    {
    NSSocketPort* var0 = [[NSSocketPort alloc] initRemoteWithProtocolFamily:n1 socketType:n2 protocol:n3 address:(NSData*) (((org_xmlvm_ios_NSData*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT____int_int_int_int]

    NSSocketPort* var0 = [[NSSocketPort alloc] initWithProtocolFamily:n1 socketType:n2 protocol:n3 socket:n4];
    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT____short_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    NSSocketPort* var0 = [[NSSocketPort alloc] initRemoteWithTCPPort:n1 host:ObjCVar2];
    [ObjCVar2 release];

    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT___]
    NSSocketPort* var0 = [[NSSocketPort alloc ] init];
    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort___INIT___]
    NSSocketPort* var0 = [[NSSocketPort alloc ] init];
    org_xmlvm_ios_NSSocketPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort_protocolFamily__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz protocolFamily];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort_socketType__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz socketType];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort_protocol__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz protocol];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort_address__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz address];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSSocketPort_socket__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz socket];

    return var0;
//XMLVM_END_WRAPPER
