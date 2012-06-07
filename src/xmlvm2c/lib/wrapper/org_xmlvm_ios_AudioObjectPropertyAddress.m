
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_AudioObjectPropertyAddress_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioObjectPropertyAddress class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioObjectPropertyAddress();
        org_xmlvm_ios_AudioObjectPropertyAddress_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioObjectPropertyAddress]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioObjectPropertyAddress]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioObjectPropertyAddress___INIT___]
    AudioObjectPropertyAddress* var0 = [[AudioObjectPropertyAddress alloc ] init];
    org_xmlvm_ios_AudioObjectPropertyAddress_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
