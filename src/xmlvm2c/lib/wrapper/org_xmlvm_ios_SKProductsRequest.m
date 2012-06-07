
//XMLVM_BEGIN_IMPLEMENTATION
@interface SKProductsRequest (SKProductsRequestWrapperCategory)
+ (void) initialize_class;
@end

@implementation SKProductsRequest (SKProductsRequestWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SKProductsRequest.classInitialized)
        __INIT_org_xmlvm_ios_SKProductsRequest();
}
@end

void org_xmlvm_ios_SKProductsRequest_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_SKRequest_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SKProductsRequest class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SKProductsRequest();
        org_xmlvm_ios_SKProductsRequest_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SKProductsRequest]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SKProductsRequest]
__DELETE_org_xmlvm_ios_SKRequest(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsRequest___INIT____java_util_Set]
NSSet * ObjCVar1 = toNSSet(n1);
    
    SKProductsRequest* var0 = [[SKProductsRequest alloc] initWithProductIdentifiers:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_SKProductsRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsRequest___INIT___]
    SKProductsRequest* var0 = [[SKProductsRequest alloc ] init];
    org_xmlvm_ios_SKProductsRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsRequest___INIT___]
    SKProductsRequest* var0 = [[SKProductsRequest alloc ] init];
    org_xmlvm_ios_SKProductsRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsRequest___INIT___]

    SKProductsRequest* var0 = [[SKProductsRequest alloc]init];

    org_xmlvm_ios_SKProductsRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsRequest_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKProductsRequest_setDelegate___org_xmlvm_ios_SKProductsRequestDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_SKProductsRequestDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_SKProductsRequestDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER
