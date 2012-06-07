
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDIDeviceList (MIDIDeviceListWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDIDeviceList (MIDIDeviceListWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDIDeviceList.classInitialized)
        __INIT_org_xmlvm_ios_MIDIDeviceList();
}
@end

void org_xmlvm_ios_MIDIDeviceList_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDIDeviceList class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDIDeviceList();
        org_xmlvm_ios_MIDIDeviceList_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDIDeviceList]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDIDeviceList]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDeviceList___INIT___]
    MIDIDeviceList* var0 = [[MIDIDeviceList alloc ] init];
    org_xmlvm_ios_MIDIDeviceList_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDeviceList___INIT___]
    MIDIDeviceList* var0 = [[MIDIDeviceList alloc ] init];
    org_xmlvm_ios_MIDIDeviceList_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDeviceList_getNumberOfDevices__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDeviceList_getDevice___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDeviceList_addDevice___org_xmlvm_ios_MIDIDevice]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDeviceList_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
