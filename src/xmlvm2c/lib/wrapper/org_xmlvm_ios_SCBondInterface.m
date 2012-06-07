
//XMLVM_BEGIN_IMPLEMENTATION
@interface SCBondInterface (SCBondInterfaceWrapperCategory)
+ (void) initialize_class;
@end

@implementation SCBondInterface (SCBondInterfaceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SCBondInterface.classInitialized)
        __INIT_org_xmlvm_ios_SCBondInterface();
}
@end

void org_xmlvm_ios_SCBondInterface_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_SCNetworkInterface_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SCBondInterface class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SCBondInterface();
        org_xmlvm_ios_SCBondInterface_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SCBondInterface]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SCBondInterface]
__DELETE_org_xmlvm_ios_SCNetworkInterface(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface___INIT____org_xmlvm_ios_SCPreferences]

    SCBondInterface* var0 = [[SCBondInterface alloc] create:(SCPreferences*) (((org_xmlvm_ios_SCPreferences*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_SCBondInterface_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface___INIT___]
    SCBondInterface* var0 = [[SCBondInterface alloc ] init];
    org_xmlvm_ios_SCBondInterface_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface___INIT___]
    SCBondInterface* var0 = [[SCBondInterface alloc ] init];
    org_xmlvm_ios_SCBondInterface_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_copyAll___org_xmlvm_ios_SCPreferences]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_copyAvailableMemberInterfaces___org_xmlvm_ios_SCPreferences]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_remove__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_getMemberInterfaces__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_getOptions__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_setMemberInterfaces___org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_setLocalizedDisplayName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_setOptions___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCBondInterface_copyStatus__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
