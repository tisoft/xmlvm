
//XMLVM_BEGIN_IMPLEMENTATION
@interface AudioComponentInstance (AudioComponentInstanceWrapperCategory)
+ (void) initialize_class;
@end

@implementation AudioComponentInstance (AudioComponentInstanceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AudioComponentInstance.classInitialized)
        __INIT_org_xmlvm_ios_AudioComponentInstance();
}
@end

void org_xmlvm_ios_AudioComponentInstance_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioComponentInstance class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioComponentInstance();
        org_xmlvm_ios_AudioComponentInstance_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioComponentInstance]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioComponentInstance]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentInstance___INIT____org_xmlvm_ios_AudioComponent_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(ComponentInstanceRecord, var2, jObject2);
    
    AudioComponentInstance* var0 = [[AudioComponentInstance alloc] new:(AudioComponent*) (((org_xmlvm_ios_AudioComponent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_AudioComponentInstance_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentInstance___INIT___]
    AudioComponentInstance* var0 = [[AudioComponentInstance alloc ] init];
    org_xmlvm_ios_AudioComponentInstance_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentInstance_dispose__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentInstance_getComponent__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentInstance_canDo___short]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
