
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFNetServiceBrowser (CFNetServiceBrowserWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFNetServiceBrowser (CFNetServiceBrowserWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFNetServiceBrowser.classInitialized)
        __INIT_org_xmlvm_ios_CFNetServiceBrowser();
}
@end

void org_xmlvm_ios_CFNetServiceBrowser_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFNetServiceBrowser class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFNetServiceBrowser();
        org_xmlvm_ios_CFNetServiceBrowser_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFNetServiceBrowser]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFNetServiceBrowser]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser___INIT____org_xmlvm_ios_CFAllocator_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CFNetServiceClientContext var3= toCFNetServiceClientContext(jObject3);
    
    CFNetServiceBrowser* var0 = [[CFNetServiceBrowser alloc] create:var1];
    org_xmlvm_ios_CFNetServiceBrowser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser___INIT___]
    CFNetServiceBrowser* var0 = [[CFNetServiceBrowser alloc ] init];
    org_xmlvm_ios_CFNetServiceBrowser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_searchForDomains___byte_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_searchForServices___java_lang_String_java_lang_String_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_stopSearch___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_scheduleWithRunLoop___org_xmlvm_ios_CFRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceBrowser_unscheduleFromRunLoop___org_xmlvm_ios_CFRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
