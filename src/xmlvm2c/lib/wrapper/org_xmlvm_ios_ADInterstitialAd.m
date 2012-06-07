
//XMLVM_BEGIN_IMPLEMENTATION
@interface ADInterstitialAd (ADInterstitialAdWrapperCategory)
+ (void) initialize_class;
@end

@implementation ADInterstitialAd (ADInterstitialAdWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ADInterstitialAd.classInitialized)
        __INIT_org_xmlvm_ios_ADInterstitialAd();
}
@end

void org_xmlvm_ios_ADInterstitialAd_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ADInterstitialAd class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ADInterstitialAd();
        org_xmlvm_ios_ADInterstitialAd_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ADInterstitialAd]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ADInterstitialAd]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd___INIT___]
    ADInterstitialAd* var0 = [[ADInterstitialAd alloc ] init];
    org_xmlvm_ios_ADInterstitialAd_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd___INIT___]

    ADInterstitialAd* var0 = [[ADInterstitialAd alloc]init];

    org_xmlvm_ios_ADInterstitialAd_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_setDelegate___org_xmlvm_ios_ADInterstitialAdDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_ADInterstitialAdDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_ADInterstitialAdDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_isLoaded__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isLoaded];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_isActionInProgress__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isActionInProgress];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_cancelAction__]

    XMLVM_VAR_THIZ;
    [thiz cancelAction];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_presentInView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  presentInView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ADInterstitialAd_presentFromViewController___org_xmlvm_ios_UIViewController]

    XMLVM_VAR_THIZ;
    [thiz  presentFromViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
