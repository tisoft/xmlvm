
//XMLVM_BEGIN_IMPLEMENTATION
@interface SCBondStatus (SCBondStatusWrapperCategory)
+ (void) initialize_class;
@end

@implementation SCBondStatus (SCBondStatusWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SCBondStatus.classInitialized)
        __INIT_org_xmlvm_ios_SCBondStatus();
}
@end

void org_xmlvm_ios_SCBondStatus_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SCBondStatus class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SCBondStatus();
        org_xmlvm_ios_SCBondStatus_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SCBondStatus]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SCBondStatus]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondStatus___INIT___]
    SCBondStatus* var0 = [[SCBondStatus alloc ] init];
    org_xmlvm_ios_SCBondStatus_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondStatus_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondStatus_getMemberInterfaces__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondStatus_getInterfaceStatus___org_xmlvm_ios_SCNetworkInterface]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
