
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSHTTPURLResponse (NSHTTPURLResponseWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSHTTPURLResponse (NSHTTPURLResponseWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSHTTPURLResponse.classInitialized)
        __INIT_org_xmlvm_ios_NSHTTPURLResponse();
}
@end

void org_xmlvm_ios_NSHTTPURLResponse_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSURLResponse_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSHTTPURLResponse class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSHTTPURLResponse();
        org_xmlvm_ios_NSHTTPURLResponse_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSHTTPURLResponse]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSHTTPURLResponse]
__DELETE_org_xmlvm_ios_NSURLResponse(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse___INIT___]
    NSHTTPURLResponse* var0 = [[NSHTTPURLResponse alloc ] init];
    org_xmlvm_ios_NSHTTPURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse___INIT____org_xmlvm_ios_NSURL_java_lang_String_int_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar4 = toNSString(n4);
    
    NSHTTPURLResponse* var0 = [[NSHTTPURLResponse alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) MIMEType:ObjCVar2 expectedContentLength:n3 textEncodingName:ObjCVar4];
    [ObjCVar2 release];

    [ObjCVar4 release];

    org_xmlvm_ios_NSHTTPURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse___INIT___]
    NSHTTPURLResponse* var0 = [[NSHTTPURLResponse alloc ] init];
    org_xmlvm_ios_NSHTTPURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse___INIT___]

    NSHTTPURLResponse* var0 = [[NSHTTPURLResponse alloc]init];

    org_xmlvm_ios_NSHTTPURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse_statusCode__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz statusCode];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse_allHeaderFields__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSHTTPURLResponse_localizedStringForStatusCode___int]

    NSString* var0 =  [NSHTTPURLResponse  localizedStringForStatusCode:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER
