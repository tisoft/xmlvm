
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNetService (NSNetServiceWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNetService (NSNetServiceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNetService.classInitialized)
        __INIT_org_xmlvm_ios_NSNetService();
}
@end

void org_xmlvm_ios_NSNetService_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNetService class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNetService();
        org_xmlvm_ios_NSNetService_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNetService]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNetService]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String_int]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSNetService* var0 = [[NSNetService alloc] initWithDomain:ObjCVar1 type:ObjCVar2 name:ObjCVar3 port:n4];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    org_xmlvm_ios_NSNetService_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService___INIT____java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSNetService* var0 = [[NSNetService alloc] initWithDomain:ObjCVar1 type:ObjCVar2 name:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    org_xmlvm_ios_NSNetService_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService___INIT___]
    NSNetService* var0 = [[NSNetService alloc ] init];
    org_xmlvm_ios_NSNetService_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService___INIT___]

    NSNetService* var0 = [[NSNetService alloc]init];

    org_xmlvm_ios_NSNetService_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_delegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_setDelegate___org_xmlvm_ios_NSNetServiceDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_scheduleInRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  scheduleInRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_removeFromRunLoop___org_xmlvm_ios_NSRunLoop_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  removeFromRunLoop:(NSRunLoop*) (((org_xmlvm_ios_NSRunLoop*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forMode:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_domain__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz domain];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_type__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz type];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_addresses__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz addresses];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_port__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz port];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_publish__]

    XMLVM_VAR_THIZ;
    [thiz publish];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_publishWithOptions___int]

    XMLVM_VAR_THIZ;
    [thiz  publishWithOptions:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_resolve__]

    XMLVM_VAR_THIZ;
    [thiz resolve];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_stop__]

    XMLVM_VAR_THIZ;
    [thiz stop];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_dictionaryFromTXTRecordData___org_xmlvm_ios_NSData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_dataFromTXTRecordDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_hostName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz hostName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_resolveWithTimeout___double]

    XMLVM_VAR_THIZ;
    [thiz  resolveWithTimeout:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_getInputStream___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    XMLVM_VAR_IOS(NSInputStream, var1, jObject1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSOutputStream, var2, jObject2);
    
    BOOL var0 = [thiz  getInputStream:&var1 outputStream:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_setTXTRecordData___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  setTXTRecordData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_TXTRecordData__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz TXTRecordData];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_startMonitoring__]

    XMLVM_VAR_THIZ;
    [thiz startMonitoring];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_stopMonitoring__]

    XMLVM_VAR_THIZ;
    [thiz stopMonitoring];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_protocolSpecificInformation__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz protocolSpecificInformation];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNetService_setProtocolSpecificInformation___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setProtocolSpecificInformation:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
