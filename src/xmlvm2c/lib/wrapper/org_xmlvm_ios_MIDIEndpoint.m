
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDIEndpoint (MIDIEndpointWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDIEndpoint (MIDIEndpointWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDIEndpoint.classInitialized)
        __INIT_org_xmlvm_ios_MIDIEndpoint();
}
@end

void org_xmlvm_ios_MIDIEndpoint_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDIEndpoint class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDIEndpoint();
        org_xmlvm_ios_MIDIEndpoint_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDIEndpoint]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDIEndpoint]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIEndpoint___INIT___]
    MIDIEndpoint* var0 = [[MIDIEndpoint alloc ] init];
    org_xmlvm_ios_MIDIEndpoint_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIEndpoint___INIT___]
    MIDIEndpoint* var0 = [[MIDIEndpoint alloc ] init];
    org_xmlvm_ios_MIDIEndpoint_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIEndpoint_setRefCons___byte_1ARRAY_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIEndpoint_getRefCons___byte_2ARRAY_byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIEndpoint_getEntity___org_xmlvm_ios_MIDIEntity]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIEndpoint_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
