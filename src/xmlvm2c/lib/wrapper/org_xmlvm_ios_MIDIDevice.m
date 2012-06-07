
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDIDevice (MIDIDeviceWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDIDevice (MIDIDeviceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDIDevice.classInitialized)
        __INIT_org_xmlvm_ios_MIDIDevice();
}
@end

void org_xmlvm_ios_MIDIDevice_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDIDevice class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDIDevice();
        org_xmlvm_ios_MIDIDevice_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDIDevice]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDIDevice]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice___INIT____org_xmlvm_ios_Reference<MIDIDriverInterface>[]_java_lang_String_java_lang_String_java_lang_String_org_xmlvm_ios_MIDIDevice]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice___INIT___]
    MIDIDevice* var0 = [[MIDIDevice alloc ] init];
    org_xmlvm_ios_MIDIDevice_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice___INIT___]
    MIDIDevice* var0 = [[MIDIDevice alloc ] init];
    org_xmlvm_ios_MIDIDevice_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice_getNumberOfEntities__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice_getEntity___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice_addEntity___java_lang_String_byte_int_int_org_xmlvm_ios_MIDIEntity]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIDevice_removeEntity___org_xmlvm_ios_MIDIEntity]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
