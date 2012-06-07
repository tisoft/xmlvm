
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNetServiceBrowser (NSNetServiceBrowserWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNetServiceBrowser (NSNetServiceBrowserWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNetServiceBrowser.classInitialized)
        __INIT_org_xmlvm_ios_NSNetServiceBrowser();
}
@end

void org_xmlvm_ios_NSNetServiceBrowser_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNetServiceBrowser class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNetServiceBrowser();
        org_xmlvm_ios_NSNetServiceBrowser_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNetServiceBrowser]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNetServiceBrowser]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser___INIT___]

    NSNetServiceBrowser* var0 = [[NSNetServiceBrowser alloc]init];

    org_xmlvm_ios_NSNetServiceBrowser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser___INIT___]
    NSNetServiceBrowser* var0 = [[NSNetServiceBrowser alloc ] init];
    org_xmlvm_ios_NSNetServiceBrowser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_delegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_setDelegate___org_xmlvm_ios_NSNetServiceBrowserDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_scheduleInRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  scheduleInRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_removeFromRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  removeFromRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_searchForBrowsableDomains__]

    XMLVM_VAR_THIZ;
    [thiz searchForBrowsableDomains];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_searchForRegistrationDomains__]

    XMLVM_VAR_THIZ;
    [thiz searchForRegistrationDomains];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_searchForServicesOfType___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  searchForServicesOfType:ObjCVar1 inDomain:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_stop__]

    XMLVM_VAR_THIZ;
    [thiz stop];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetServiceBrowser_searchForAllDomains__]

    XMLVM_VAR_THIZ;
    [thiz searchForAllDomains];

    
//XMLVM_END_WRAPPER
