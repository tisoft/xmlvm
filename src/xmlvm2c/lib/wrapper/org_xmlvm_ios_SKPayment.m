
//XMLVM_BEGIN_IMPLEMENTATION
@interface SKPayment (SKPaymentWrapperCategory)
+ (void) initialize_class;
@end

@implementation SKPayment (SKPaymentWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_SKPayment.classInitialized)
        __INIT_org_xmlvm_ios_SKPayment();
}
@end

void org_xmlvm_ios_SKPayment_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [SKPayment class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_SKPayment();
        org_xmlvm_ios_SKPayment_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_SKPayment]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_SKPayment]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment___INIT___]
    SKPayment* var0 = [[SKPayment alloc ] init];
    org_xmlvm_ios_SKPayment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment___INIT___]

    SKPayment* var0 = [[SKPayment alloc]init];

    org_xmlvm_ios_SKPayment_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment_paymentWithProduct___org_xmlvm_ios_SKProduct]

    SKPayment* var0 =  [SKPayment  paymentWithProduct:(SKProduct*) (((org_xmlvm_ios_SKProduct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment_paymentWithProductIdentifier___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    SKPayment* var0 =  [SKPayment  paymentWithProductIdentifier:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment_getProductIdentifier__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz productIdentifier];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment_getRequestData__]

    XMLVM_VAR_THIZ;
    NSData* var0 = [thiz requestData];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SKPayment_getQuantity__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz quantity];
    
    return var0;
//XMLVM_END_WRAPPER
