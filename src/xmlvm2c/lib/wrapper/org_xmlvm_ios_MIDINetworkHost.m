
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDINetworkHost (MIDINetworkHostWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDINetworkHost (MIDINetworkHostWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDINetworkHost.classInitialized)
        __INIT_org_xmlvm_ios_MIDINetworkHost();
}
@end

void org_xmlvm_ios_MIDINetworkHost_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDINetworkHost class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDINetworkHost();
        org_xmlvm_ios_MIDINetworkHost_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDINetworkHost]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDINetworkHost]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost___INIT___]
    MIDINetworkHost* var0 = [[MIDINetworkHost alloc ] init];
    org_xmlvm_ios_MIDINetworkHost_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost___INIT___]

    MIDINetworkHost* var0 = [[MIDINetworkHost alloc]init];

    org_xmlvm_ios_MIDINetworkHost_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_hostWithName___java_lang_String_java_lang_String_int]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSObject* var0 =  [MIDINetworkHost  hostWithName:ObjCVar1 address:ObjCVar2 port:n3];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_hostWithName___java_lang_String_org_xmlvm_ios_NSNetService]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [MIDINetworkHost  hostWithName:ObjCVar1 netService:(NSNetService*) (((org_xmlvm_ios_NSNetService*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_hostWithName___java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSObject* var0 =  [MIDINetworkHost  hostWithName:ObjCVar1 netServiceName:ObjCVar2 netServiceDomain:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_hasSameAddressAs___org_xmlvm_ios_MIDINetworkHost]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  hasSameAddressAs:(MIDINetworkHost*) (((org_xmlvm_ios_MIDINetworkHost*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_getName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz name];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_getAddress__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz address];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_getPort__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz port];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_getNetServiceName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz netServiceName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkHost_getNetServiceDomain__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz netServiceDomain];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
