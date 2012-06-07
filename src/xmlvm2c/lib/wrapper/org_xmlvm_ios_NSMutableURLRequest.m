
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableURLRequest (NSMutableURLRequestWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableURLRequest (NSMutableURLRequestWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableURLRequest.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableURLRequest();
}
@end

void org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSURLRequest_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableURLRequest class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableURLRequest();
        org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableURLRequest]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableURLRequest]
__DELETE_org_xmlvm_ios_NSURLRequest(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest___INIT___]
    NSMutableURLRequest* var0 = [[NSMutableURLRequest alloc ] init];
    org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest___INIT____org_xmlvm_ios_NSURL]

    NSMutableURLRequest* var0 = [[NSMutableURLRequest alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest___INIT____org_xmlvm_ios_NSURL_int_double]

    NSMutableURLRequest* var0 = [[NSMutableURLRequest alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) cachePolicy:n2 timeoutInterval:n3];
    org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest___INIT___]
    NSMutableURLRequest* var0 = [[NSMutableURLRequest alloc ] init];
    org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest___INIT___]

    NSMutableURLRequest* var0 = [[NSMutableURLRequest alloc]init];

    org_xmlvm_ios_NSMutableURLRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    [thiz  setURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setCachePolicy___int]

    XMLVM_VAR_THIZ;
    [thiz  setCachePolicy:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setTimeoutInterval___double]

    XMLVM_VAR_THIZ;
    [thiz  setTimeoutInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setMainDocumentURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    [thiz  setMainDocumentURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setNetworkServiceType___int]

    XMLVM_VAR_THIZ;
    [thiz  setNetworkServiceType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setHTTPMethod___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setHTTPMethod:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setAllHTTPHeaderFields___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setValue___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setValue:ObjCVar1 forHTTPHeaderField:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_addValue___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  addValue:ObjCVar1 forHTTPHeaderField:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setHTTPBody___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz  setHTTPBody:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setHTTPBodyStream___org_xmlvm_ios_NSInputStream]

    XMLVM_VAR_THIZ;
    [thiz  setHTTPBodyStream:(NSInputStream*) (((org_xmlvm_ios_NSInputStream*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setHTTPShouldHandleCookies___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setHTTPShouldHandleCookies:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableURLRequest_setHTTPShouldUsePipelining___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setHTTPShouldUsePipelining:n1];

    
//XMLVM_END_WRAPPER
