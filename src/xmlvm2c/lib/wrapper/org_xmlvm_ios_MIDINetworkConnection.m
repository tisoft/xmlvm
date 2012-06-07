
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDINetworkConnection (MIDINetworkConnectionWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDINetworkConnection (MIDINetworkConnectionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDINetworkConnection.classInitialized)
        __INIT_org_xmlvm_ios_MIDINetworkConnection();
}
@end

void org_xmlvm_ios_MIDINetworkConnection_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDINetworkConnection class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDINetworkConnection();
        org_xmlvm_ios_MIDINetworkConnection_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDINetworkConnection]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDINetworkConnection]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkConnection___INIT___]
    MIDINetworkConnection* var0 = [[MIDINetworkConnection alloc ] init];
    org_xmlvm_ios_MIDINetworkConnection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkConnection___INIT___]

    MIDINetworkConnection* var0 = [[MIDINetworkConnection alloc]init];

    org_xmlvm_ios_MIDINetworkConnection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkConnection_connectionWithHost___org_xmlvm_ios_MIDINetworkHost]

    NSObject* var0 =  [MIDINetworkConnection  connectionWithHost:(MIDINetworkHost*) (((org_xmlvm_ios_MIDINetworkHost*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINetworkConnection_getHost__]

    XMLVM_VAR_THIZ;
    MIDINetworkHost* var0 = [thiz host];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
