
//XMLVM_BEGIN_IMPLEMENTATION
@interface AuthorizationOpaque (AuthorizationOpaqueWrapperCategory)
+ (void) initialize_class;
@end

@implementation AuthorizationOpaque (AuthorizationOpaqueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AuthorizationOpaque.classInitialized)
        __INIT_org_xmlvm_ios_AuthorizationOpaque();
}
@end

void org_xmlvm_ios_AuthorizationOpaque_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AuthorizationOpaque class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AuthorizationOpaque();
        org_xmlvm_ios_AuthorizationOpaque_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AuthorizationOpaque]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AuthorizationOpaque]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AuthorizationOpaque___INIT___]
    AuthorizationOpaque* var0 = [[AuthorizationOpaque alloc ] init];
    org_xmlvm_ios_AuthorizationOpaque_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
