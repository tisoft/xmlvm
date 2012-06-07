
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSURLCredentialStorage (NSURLCredentialStorageWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSURLCredentialStorage (NSURLCredentialStorageWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSURLCredentialStorage.classInitialized)
        __INIT_org_xmlvm_ios_NSURLCredentialStorage();
}
@end

void org_xmlvm_ios_NSURLCredentialStorage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSURLCredentialStorage class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSURLCredentialStorage();
        org_xmlvm_ios_NSURLCredentialStorage_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSURLCredentialStorage]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSURLCredentialStorage]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage___INIT___]
    NSURLCredentialStorage* var0 = [[NSURLCredentialStorage alloc ] init];
    org_xmlvm_ios_NSURLCredentialStorage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage___INIT___]

    NSURLCredentialStorage* var0 = [[NSURLCredentialStorage alloc]init];

    org_xmlvm_ios_NSURLCredentialStorage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_sharedCredentialStorage__]

    NSURLCredentialStorage* var0 =  [NSURLCredentialStorage sharedCredentialStorage];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_credentialsForProtectionSpace___org_xmlvm_ios_NSURLProtectionSpace]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_allCredentials__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_setCredential___org_xmlvm_ios_NSURLCredential_org_xmlvm_ios_NSURLProtectionSpace]

    XMLVM_VAR_THIZ;
    [thiz  setCredential:(NSURLCredential*) (((org_xmlvm_ios_NSURLCredential*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forProtectionSpace:(NSURLProtectionSpace*) (((org_xmlvm_ios_NSURLProtectionSpace*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_removeCredential___org_xmlvm_ios_NSURLCredential_org_xmlvm_ios_NSURLProtectionSpace]

    XMLVM_VAR_THIZ;
    [thiz  removeCredential:(NSURLCredential*) (((org_xmlvm_ios_NSURLCredential*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forProtectionSpace:(NSURLProtectionSpace*) (((org_xmlvm_ios_NSURLProtectionSpace*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_defaultCredentialForProtectionSpace___org_xmlvm_ios_NSURLProtectionSpace]

    XMLVM_VAR_THIZ;
    
    NSURLCredential* var0 = [thiz  defaultCredentialForProtectionSpace:(NSURLProtectionSpace*) (((org_xmlvm_ios_NSURLProtectionSpace*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURLCredentialStorage_setDefaultCredential___org_xmlvm_ios_NSURLCredential_org_xmlvm_ios_NSURLProtectionSpace]

    XMLVM_VAR_THIZ;
    [thiz  setDefaultCredential:(NSURLCredential*) (((org_xmlvm_ios_NSURLCredential*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forProtectionSpace:(NSURLProtectionSpace*) (((org_xmlvm_ios_NSURLProtectionSpace*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
