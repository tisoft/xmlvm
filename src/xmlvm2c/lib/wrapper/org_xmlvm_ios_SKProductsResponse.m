
//XMLVM_BEGIN_IMPLEMENTATION
@interface SKProductsResponse (SKProductsResponseWrapperCategory)
+ (void) initialize_class;
@end

@implementation SKProductsResponse (SKProductsResponseWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SKProductsResponse.classInitialized)
        __INIT_org_xmlvm_ios_SKProductsResponse();
}
@end

void org_xmlvm_ios_SKProductsResponse_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SKProductsResponse class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SKProductsResponse();
        org_xmlvm_ios_SKProductsResponse_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SKProductsResponse]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SKProductsResponse]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsResponse___INIT___]
    SKProductsResponse* var0 = [[SKProductsResponse alloc ] init];
    org_xmlvm_ios_SKProductsResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsResponse___INIT___]

    SKProductsResponse* var0 = [[SKProductsResponse alloc]init];

    org_xmlvm_ios_SKProductsResponse_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsResponse_getProducts__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz products];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsResponse_getInvalidProductIdentifiers__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz invalidProductIdentifiers];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
