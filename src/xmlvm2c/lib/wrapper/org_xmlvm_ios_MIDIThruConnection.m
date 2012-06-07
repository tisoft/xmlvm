
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDIThruConnection (MIDIThruConnectionWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDIThruConnection (MIDIThruConnectionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDIThruConnection.classInitialized)
        __INIT_org_xmlvm_ios_MIDIThruConnection();
}
@end

void org_xmlvm_ios_MIDIThruConnection_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDIThruConnection class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDIThruConnection();
        org_xmlvm_ios_MIDIThruConnection_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDIThruConnection]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDIThruConnection]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection___INIT____java_lang_String_org_xmlvm_ios_CFData_org_xmlvm_ios_MIDIThruConnection]
NSString * ObjCVar1 = toNSString(n1);
    
    MIDIThruConnection* var0 = [[MIDIThruConnection alloc] create:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_MIDIThruConnection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection___INIT___]
    MIDIThruConnection* var0 = [[MIDIThruConnection alloc ] init];
    org_xmlvm_ios_MIDIThruConnection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection___INIT___]
    MIDIThruConnection* var0 = [[MIDIThruConnection alloc ] init];
    org_xmlvm_ios_MIDIThruConnection_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection_getParams___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection_setParams___org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnection_find___java_lang_String_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(CFData, var2, jObject2);
    
    int var0 = CFDataFind(ObjCVar1,&var2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, xmlvm_get_associated_c_object (var2));
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER
