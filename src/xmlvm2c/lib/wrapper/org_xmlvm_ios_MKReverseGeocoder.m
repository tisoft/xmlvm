
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKReverseGeocoder (MKReverseGeocoderWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKReverseGeocoder (MKReverseGeocoderWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKReverseGeocoder.classInitialized)
        __INIT_org_xmlvm_ios_MKReverseGeocoder();
}
@end

void org_xmlvm_ios_MKReverseGeocoder_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKReverseGeocoder class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKReverseGeocoder();
        org_xmlvm_ios_MKReverseGeocoder_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKReverseGeocoder]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKReverseGeocoder]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder___INIT____org_xmlvm_ios_CLLocationCoordinate2D]

    MKReverseGeocoder* var0 = [[MKReverseGeocoder alloc] initWithCoordinate:toCLLocationCoordinate2D(n1)];
    org_xmlvm_ios_MKReverseGeocoder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder___INIT___]
    MKReverseGeocoder* var0 = [[MKReverseGeocoder alloc ] init];
    org_xmlvm_ios_MKReverseGeocoder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder___INIT___]

    MKReverseGeocoder* var0 = [[MKReverseGeocoder alloc]init];

    org_xmlvm_ios_MKReverseGeocoder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_start__]

    XMLVM_VAR_THIZ;
    [thiz start];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_cancel__]

    XMLVM_VAR_THIZ;
    [thiz cancel];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_setDelegate___org_xmlvm_ios_MKReverseGeocoderDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_MKReverseGeocoderDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_MKReverseGeocoderDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_getCoordinate__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz coordinate];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_getPlacemark__]

    XMLVM_VAR_THIZ;
    MKPlacemark* var0 = [thiz placemark];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKReverseGeocoder_isQuerying__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isQuerying];
    
    return var0;
//XMLVM_END_WRAPPER
