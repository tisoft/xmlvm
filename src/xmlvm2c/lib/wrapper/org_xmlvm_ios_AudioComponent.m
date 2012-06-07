
//XMLVM_BEGIN_IMPLEMENTATION
@interface AudioComponent (AudioComponentWrapperCategory)
+ (void) initialize_class;
@end

@implementation AudioComponent (AudioComponentWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AudioComponent.classInitialized)
        __INIT_org_xmlvm_ios_AudioComponent();
}
@end

void org_xmlvm_ios_AudioComponent_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioComponent class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioComponent();
        org_xmlvm_ios_AudioComponent_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioComponent]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioComponent]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponent___INIT___]
    AudioComponent* var0 = [[AudioComponent alloc ] init];
    org_xmlvm_ios_AudioComponent_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponent_findNext___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponent_count___org_xmlvm_ios_Reference]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    AudioComponentDescription var1= toAudioComponentDescription(jObject1);
    
    int var0 = ABAddressBookGetGroupCount(&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromAudioComponentDescription(var1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponent_copyName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponent_getDescription___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponent_getVersion___int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
