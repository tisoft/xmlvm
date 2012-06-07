
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFURLEnumerator (CFURLEnumeratorWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFURLEnumerator (CFURLEnumeratorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFURLEnumerator.classInitialized)
        __INIT_org_xmlvm_ios_CFURLEnumerator();
}
@end

void org_xmlvm_ios_CFURLEnumerator_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFURLEnumerator class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFURLEnumerator();
        org_xmlvm_ios_CFURLEnumerator_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFURLEnumerator]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFURLEnumerator]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator___INIT___]
    CFURLEnumerator* var0 = [[CFURLEnumerator alloc ] init];
    org_xmlvm_ios_CFURLEnumerator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_createForDirectoryURL___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFURL_long_org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_createForMountedVolumes___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_CFArray]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_getNextURL___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_skipDescendents__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_getDescendentLevel__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFURLEnumerator_getSourceDidChange__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
