
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTTelephonyNetworkInfo (CTTelephonyNetworkInfoWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTTelephonyNetworkInfo (CTTelephonyNetworkInfoWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTTelephonyNetworkInfo.classInitialized)
        __INIT_org_xmlvm_ios_CTTelephonyNetworkInfo();
}
@end

void org_xmlvm_ios_CTTelephonyNetworkInfo_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTTelephonyNetworkInfo class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTTelephonyNetworkInfo();
        org_xmlvm_ios_CTTelephonyNetworkInfo_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTTelephonyNetworkInfo]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTTelephonyNetworkInfo]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTelephonyNetworkInfo___INIT___]
    CTTelephonyNetworkInfo* var0 = [[CTTelephonyNetworkInfo alloc ] init];
    org_xmlvm_ios_CTTelephonyNetworkInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTelephonyNetworkInfo___INIT___]

    CTTelephonyNetworkInfo* var0 = [[CTTelephonyNetworkInfo alloc]init];

    org_xmlvm_ios_CTTelephonyNetworkInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTelephonyNetworkInfo_getSubscriberCellularProvider__]

    XMLVM_VAR_THIZ;
    CTCarrier* var0 = [thiz subscriberCellularProvider];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
