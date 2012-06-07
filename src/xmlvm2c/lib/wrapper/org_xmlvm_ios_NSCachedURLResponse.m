
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCachedURLResponse (NSCachedURLResponseWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCachedURLResponse (NSCachedURLResponseWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCachedURLResponse.classInitialized)
        __INIT_org_xmlvm_ios_NSCachedURLResponse();
}
@end

void org_xmlvm_ios_NSCachedURLResponse_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCachedURLResponse class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCachedURLResponse();
        org_xmlvm_ios_NSCachedURLResponse_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCachedURLResponse]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCachedURLResponse]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse___INIT____org_xmlvm_ios_NSURLResponse_org_xmlvm_ios_NSData]

    NSCachedURLResponse* var0 = [[NSCachedURLResponse alloc] initWithResponse:(NSURLResponse*) (((org_xmlvm_ios_NSURLResponse*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) data:(NSData*) (((org_xmlvm_ios_NSData*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSCachedURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse___INIT____org_xmlvm_ios_NSURLResponse_org_xmlvm_ios_NSData_java_util_Map_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse___INIT___]
    NSCachedURLResponse* var0 = [[NSCachedURLResponse alloc ] init];
    org_xmlvm_ios_NSCachedURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse___INIT___]

    NSCachedURLResponse* var0 = [[NSCachedURLResponse alloc]init];

    org_xmlvm_ios_NSCachedURLResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse_response__]

    XMLVM_VAR_THIZ;
    
    NSURLResponse* var0 = [thiz response];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse_data__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz data];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCachedURLResponse_storagePolicy__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz storagePolicy];

    return var0;
//XMLVM_END_WRAPPER
