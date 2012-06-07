
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDISetup (MIDISetupWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDISetup (MIDISetupWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDISetup.classInitialized)
        __INIT_org_xmlvm_ios_MIDISetup();
}
@end

void org_xmlvm_ios_MIDISetup_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDISetup class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDISetup();
        org_xmlvm_ios_MIDISetup_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDISetup]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDISetup]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup___INIT____org_xmlvm_ios_MIDISetup]

    MIDISetup* var0 = [[MIDISetup alloc] create:(MIDISetup*) (((org_xmlvm_ios_MIDISetup*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MIDISetup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup___INIT___]
    MIDISetup* var0 = [[MIDISetup alloc ] init];
    org_xmlvm_ios_MIDISetup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup___INIT___]
    MIDISetup* var0 = [[MIDISetup alloc ] init];
    org_xmlvm_ios_MIDISetup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_install__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_getCurrent__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_toData___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_fromData___org_xmlvm_ios_CFData_org_xmlvm_ios_MIDISetup]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_addDevice___org_xmlvm_ios_MIDIDevice]

    int var0 = MIDIDeviceListAddDevice((MIDIDevice*) (((org_xmlvm_ios_MIDIDevice*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_removeDevice___org_xmlvm_ios_MIDIDevice]

    int var0 = MIDISetupRemoveDevice((MIDIDevice*) (((org_xmlvm_ios_MIDIDevice*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_addExternalDevice___org_xmlvm_ios_MIDIDevice]

    int var0 = MIDISetupAddExternalDevice((MIDIDevice*) (((org_xmlvm_ios_MIDIDevice*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISetup_removeExternalDevice___org_xmlvm_ios_MIDIDevice]

    int var0 = MIDISetupRemoveExternalDevice((MIDIDevice*) (((org_xmlvm_ios_MIDIDevice*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER
