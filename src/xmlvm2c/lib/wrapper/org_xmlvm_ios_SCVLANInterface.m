
//XMLVM_BEGIN_IMPLEMENTATION
@interface SCVLANInterface (SCVLANInterfaceWrapperCategory)
+ (void) initialize_class;
@end

@implementation SCVLANInterface (SCVLANInterfaceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SCVLANInterface.classInitialized)
        __INIT_org_xmlvm_ios_SCVLANInterface();
}
@end

void org_xmlvm_ios_SCVLANInterface_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_SCNetworkInterface_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SCVLANInterface class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SCVLANInterface();
        org_xmlvm_ios_SCVLANInterface_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SCVLANInterface]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SCVLANInterface]
__DELETE_org_xmlvm_ios_SCNetworkInterface(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface___INIT____org_xmlvm_ios_SCPreferences_org_xmlvm_ios_SCNetworkInterface_org_xmlvm_ios_NSNumber]

    SCVLANInterface* var0 = [[SCVLANInterface alloc] create:(SCPreferences*) (((org_xmlvm_ios_SCPreferences*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_SCVLANInterface_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface___INIT___]
    SCVLANInterface* var0 = [[SCVLANInterface alloc ] init];
    org_xmlvm_ios_SCVLANInterface_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface___INIT___]
    SCVLANInterface* var0 = [[SCVLANInterface alloc ] init];
    org_xmlvm_ios_SCVLANInterface_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_copyAll___org_xmlvm_ios_SCPreferences]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_copyAvailablePhysicalInterfaces__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_remove__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_getPhysicalInterface__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_getTag__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_getOptions__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_setPhysicalInterfaceAndTag___org_xmlvm_ios_SCNetworkInterface_org_xmlvm_ios_NSNumber]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_setLocalizedDisplayName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCVLANInterface_setOptions___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
