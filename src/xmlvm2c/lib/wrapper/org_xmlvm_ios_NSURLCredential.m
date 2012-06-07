
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSURLCredential (NSURLCredentialWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSURLCredential (NSURLCredentialWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSURLCredential.classInitialized)
        __INIT_org_xmlvm_ios_NSURLCredential();
}
@end

void org_xmlvm_ios_NSURLCredential_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSURLCredential class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSURLCredential();
        org_xmlvm_ios_NSURLCredential_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSURLCredential]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSURLCredential]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential___INIT____java_lang_String_java_lang_String_int]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSURLCredential* var0 = [[NSURLCredential alloc] initWithUser:ObjCVar1 password:ObjCVar2 persistence:n3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    org_xmlvm_ios_NSURLCredential_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential___INIT____org_xmlvm_ios_SecIdentity_java_util_List_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential___INIT____org_xmlvm_ios_SecTrust]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential___INIT___]
    NSURLCredential* var0 = [[NSURLCredential alloc ] init];
    org_xmlvm_ios_NSURLCredential_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential___INIT___]

    NSURLCredential* var0 = [[NSURLCredential alloc]init];

    org_xmlvm_ios_NSURLCredential_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_persistence__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz persistence];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_credentialWithUser___java_lang_String_java_lang_String_int]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSURLCredential* var0 =  [NSURLCredential  credentialWithUser:ObjCVar1 password:ObjCVar2 persistence:n3];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_user__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz user];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_password__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz password];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_hasPassword__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz hasPassword];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_credentialWithIdentity___org_xmlvm_ios_SecIdentity_java_util_List_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_identity__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_certificates__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz certificates];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredential_credentialForTrust___org_xmlvm_ios_SecTrust]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
