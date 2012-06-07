
//XMLVM_BEGIN_IMPLEMENTATION
@interface MIDIClient (MIDIClientWrapperCategory)
+ (void) initialize_class;
@end

@implementation MIDIClient (MIDIClientWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MIDIClient.classInitialized)
        __INIT_org_xmlvm_ios_MIDIClient();
}
@end

void org_xmlvm_ios_MIDIClient_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MIDIObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MIDIClient class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MIDIClient();
        org_xmlvm_ios_MIDIClient_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MIDIClient]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MIDIClient]
__DELETE_org_xmlvm_ios_MIDIObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIClient___INIT____java_lang_String_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_MIDIClient]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    MIDIClient* var0 = [[MIDIClient alloc] create:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_MIDIClient_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIClient___INIT___]
    MIDIClient* var0 = [[MIDIClient alloc ] init];
    org_xmlvm_ios_MIDIClient_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIClient___INIT___]
    MIDIClient* var0 = [[MIDIClient alloc ] init];
    org_xmlvm_ios_MIDIClient_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIClient_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
