
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFNetServiceMonitor (CFNetServiceMonitorWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFNetServiceMonitor (CFNetServiceMonitorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFNetServiceMonitor.classInitialized)
        __INIT_org_xmlvm_ios_CFNetServiceMonitor();
}
@end

void org_xmlvm_ios_CFNetServiceMonitor_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFNetServiceMonitor class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFNetServiceMonitor();
        org_xmlvm_ios_CFNetServiceMonitor_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFNetServiceMonitor]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFNetServiceMonitor]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor___INIT____org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFNetService_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFNetServiceClientContext var4= toCFNetServiceClientContext(jObject4);
    
    CFNetServiceMonitor* var0 = [[CFNetServiceMonitor alloc] create:var1];
    org_xmlvm_ios_CFNetServiceMonitor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor___INIT___]
    CFNetServiceMonitor* var0 = [[CFNetServiceMonitor alloc ] init];
    org_xmlvm_ios_CFNetServiceMonitor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor_start___int_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor_stop___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor_scheduleWithRunLoop___org_xmlvm_ios_CFRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetServiceMonitor_unscheduleFromRunLoop___org_xmlvm_ios_CFRunLoop_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
