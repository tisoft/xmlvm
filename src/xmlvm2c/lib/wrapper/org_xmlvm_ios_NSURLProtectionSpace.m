
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSURLProtectionSpace (NSURLProtectionSpaceWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSURLProtectionSpace (NSURLProtectionSpaceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSURLProtectionSpace.classInitialized)
        __INIT_org_xmlvm_ios_NSURLProtectionSpace();
}
@end

void org_xmlvm_ios_NSURLProtectionSpace_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSURLProtectionSpace class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSURLProtectionSpace();
        org_xmlvm_ios_NSURLProtectionSpace_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSURLProtectionSpace]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSURLProtectionSpace]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace___INIT____java_lang_String_int_java_lang_String_java_lang_String_java_lang_String_org_xmlvm_ios_NSURLProtectionSpace_ServerType]

    if((org_xmlvm_ios_NSURLProtectionSpace_ServerType*) n6 == org_xmlvm_ios_NSURLProtectionSpace_ServerType_GET_Default())
    {NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    NSString * ObjCVar5 = toNSString(n5);
    
    NSURLProtectionSpace* var0 = [[NSURLProtectionSpace alloc] initWithHost:ObjCVar1 port:n2 protocol:ObjCVar3 realm:ObjCVar4 authenticationMethod:ObjCVar5];
    [ObjCVar1 release];

    [ObjCVar3 release];

    [ObjCVar4 release];

    [ObjCVar5 release];

    org_xmlvm_ios_NSURLProtectionSpace_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSURLProtectionSpace_ServerType*) n6 == org_xmlvm_ios_NSURLProtectionSpace_ServerType_GET_Proxy())
    {NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    NSString * ObjCVar5 = toNSString(n5);
    
    NSURLProtectionSpace* var0 = [[NSURLProtectionSpace alloc] initWithProxyHost:ObjCVar1 port:n2 type:ObjCVar3 realm:ObjCVar4 authenticationMethod:ObjCVar5];
    [ObjCVar1 release];

    [ObjCVar3 release];

    [ObjCVar4 release];

    [ObjCVar5 release];

    org_xmlvm_ios_NSURLProtectionSpace_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace___INIT___]
    NSURLProtectionSpace* var0 = [[NSURLProtectionSpace alloc ] init];
    org_xmlvm_ios_NSURLProtectionSpace_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace___INIT___]

    NSURLProtectionSpace* var0 = [[NSURLProtectionSpace alloc]init];

    org_xmlvm_ios_NSURLProtectionSpace_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_realm__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz realm];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_receivesCredentialSecurely__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz receivesCredentialSecurely];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_isProxy__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isProxy];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_host__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz host];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_port__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz port];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_proxyType__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz proxyType];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_protocol__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz protocol];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_authenticationMethod__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz authenticationMethod];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_distinguishedNames__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz distinguishedNames];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLProtectionSpace_serverTrust__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
