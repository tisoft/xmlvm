
//XMLVM_BEGIN_IMPLEMENTATION
@interface SecPolicy (SecPolicyWrapperCategory)
+ (void) initialize_class;
@end

@implementation SecPolicy (SecPolicyWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SecPolicy.classInitialized)
        __INIT_org_xmlvm_ios_SecPolicy();
}
@end

void org_xmlvm_ios_SecPolicy_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SecPolicy class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SecPolicy();
        org_xmlvm_ios_SecPolicy_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SecPolicy]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SecPolicy]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SecPolicy___INIT___]
    SecPolicy* var0 = [[SecPolicy alloc ] init];
    org_xmlvm_ios_SecPolicy_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SecPolicy_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SecPolicy_createBasicX509__]

    SecPolicy* var0 = SecPolicyCreateBasicX509();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SecPolicy_createSSL___byte_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    SecPolicy* var0 = SecPolicyCreateSSL(n1,ObjCVar2);
    
    [ObjCVar2 release];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
