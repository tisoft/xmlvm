
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSProcessInfo (NSProcessInfoWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSProcessInfo (NSProcessInfoWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSProcessInfo.classInitialized)
        __INIT_org_xmlvm_ios_NSProcessInfo();
}
@end

void org_xmlvm_ios_NSProcessInfo_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSProcessInfo class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSProcessInfo();
        org_xmlvm_ios_NSProcessInfo_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSProcessInfo]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSProcessInfo]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo___INIT___]
    NSProcessInfo* var0 = [[NSProcessInfo alloc ] init];
    org_xmlvm_ios_NSProcessInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo___INIT___]

    NSProcessInfo* var0 = [[NSProcessInfo alloc]init];

    org_xmlvm_ios_NSProcessInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_processInfo__]

    NSProcessInfo* var0 =  [NSProcessInfo processInfo];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_environment__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_arguments__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz arguments];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_hostName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz hostName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_processName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz processName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_processIdentifier__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz processIdentifier];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_setProcessName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setProcessName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_globallyUniqueString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz globallyUniqueString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_operatingSystem__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz operatingSystem];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_operatingSystemName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz operatingSystemName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_operatingSystemVersionString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz operatingSystemVersionString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_processorCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz processorCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_activeProcessorCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz activeProcessorCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_physicalMemory__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz physicalMemory];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_systemUptime__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz systemUptime];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_disableSuddenTermination__]

    XMLVM_VAR_THIZ;
    [thiz disableSuddenTermination];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSProcessInfo_enableSuddenTermination__]

    XMLVM_VAR_THIZ;
    [thiz enableSuddenTermination];

    
//XMLVM_END_WRAPPER
