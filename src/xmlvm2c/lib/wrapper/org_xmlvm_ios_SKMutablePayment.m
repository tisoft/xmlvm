
//XMLVM_BEGIN_IMPLEMENTATION
@interface SKMutablePayment (SKMutablePaymentWrapperCategory)
+ (void) initialize_class;
@end

@implementation SKMutablePayment (SKMutablePaymentWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SKMutablePayment.classInitialized)
        __INIT_org_xmlvm_ios_SKMutablePayment();
}
@end

void org_xmlvm_ios_SKMutablePayment_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_SKPayment_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SKMutablePayment class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SKMutablePayment();
        org_xmlvm_ios_SKMutablePayment_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SKMutablePayment]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SKMutablePayment]
__DELETE_org_xmlvm_ios_SKPayment(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment___INIT___]
    SKMutablePayment* var0 = [[SKMutablePayment alloc ] init];
    org_xmlvm_ios_SKMutablePayment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment___INIT___]
    SKMutablePayment* var0 = [[SKMutablePayment alloc ] init];
    org_xmlvm_ios_SKMutablePayment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment___INIT___]

    SKMutablePayment* var0 = [[SKMutablePayment alloc]init];

    org_xmlvm_ios_SKMutablePayment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment_getProductIdentifier__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz productIdentifier];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment_setProductIdentifier___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setProductIdentifier:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment_getQuantity__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz quantity];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment_setQuantity___int]

    XMLVM_VAR_THIZ;
    [thiz setQuantity:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment_getRequestData__]

    XMLVM_VAR_THIZ;
    NSData* var0 = [thiz requestData];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKMutablePayment_setRequestData___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    [thiz setRequestData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
