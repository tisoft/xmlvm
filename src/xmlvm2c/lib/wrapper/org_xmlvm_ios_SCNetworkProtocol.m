
//XMLVM_BEGIN_IMPLEMENTATION
@interface SCNetworkProtocol (SCNetworkProtocolWrapperCategory)
+ (void) initialize_class;
@end

@implementation SCNetworkProtocol (SCNetworkProtocolWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SCNetworkProtocol.classInitialized)
        __INIT_org_xmlvm_ios_SCNetworkProtocol();
}
@end

void org_xmlvm_ios_SCNetworkProtocol_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SCNetworkProtocol class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SCNetworkProtocol();
        org_xmlvm_ios_SCNetworkProtocol_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SCNetworkProtocol]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SCNetworkProtocol]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol___INIT___]
    SCNetworkProtocol* var0 = [[SCNetworkProtocol alloc ] init];
    org_xmlvm_ios_SCNetworkProtocol_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol_getConfiguration__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol_getEnabled__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol_getProtocolType__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol_setConfiguration___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCNetworkProtocol_setEnabled___byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
