
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDIPort (MIDIPortWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDIPort (MIDIPortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDIPort.classInitialized)
        __INIT_org_xmlvm_ios_MIDIPort();
}
@end

void org_xmlvm_ios_MIDIPort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDIPort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDIPort();
        org_xmlvm_ios_MIDIPort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDIPort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDIPort]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPort___INIT___]
    MIDIPort* var0 = [[MIDIPort alloc ] init];
    org_xmlvm_ios_MIDIPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPort___INIT___]
    MIDIPort* var0 = [[MIDIPort alloc ] init];
    org_xmlvm_ios_MIDIPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPort_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPort_connectSource___org_xmlvm_ios_MIDIEndpoint_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPort_disconnectSource___org_xmlvm_ios_MIDIEndpoint]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
