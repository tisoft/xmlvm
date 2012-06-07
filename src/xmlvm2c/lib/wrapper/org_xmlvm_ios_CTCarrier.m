
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTCarrier (CTCarrierWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTCarrier (CTCarrierWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTCarrier.classInitialized)
        __INIT_org_xmlvm_ios_CTCarrier();
}
@end

void org_xmlvm_ios_CTCarrier_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTCarrier class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTCarrier();
        org_xmlvm_ios_CTCarrier_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTCarrier]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTCarrier]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier___INIT___]
    CTCarrier* var0 = [[CTCarrier alloc ] init];
    org_xmlvm_ios_CTCarrier_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier___INIT___]

    CTCarrier* var0 = [[CTCarrier alloc]init];

    org_xmlvm_ios_CTCarrier_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier_getCarrierName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz carrierName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier_getMobileCountryCode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz mobileCountryCode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier_getMobileNetworkCode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz mobileNetworkCode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier_getIsoCountryCode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz isoCountryCode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCarrier_getAllowsVOIP__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsVOIP];
    
    return var0;
//XMLVM_END_WRAPPER
