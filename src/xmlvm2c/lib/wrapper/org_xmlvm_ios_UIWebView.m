
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIWebView (UIWebViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIWebView (UIWebViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIWebView.classInitialized)
        __INIT_org_xmlvm_ios_UIWebView();
}
@end

void org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIWebView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIWebView();
        org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIWebView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIWebView]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView___INIT___]
    UIWebView* var0 = [[UIWebView alloc ] init];
    org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView___INIT____org_xmlvm_ios_CGRect]

    UIWebView* var0 = [[UIWebView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView___INIT___]
    UIWebView* var0 = [[UIWebView alloc ] init];
    org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView___INIT___]
    UIWebView* var0 = [[UIWebView alloc ] init];
    org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView___INIT___]

    UIWebView* var0 = [[UIWebView alloc]init];

    org_xmlvm_ios_UIWebView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_setDelegate___org_xmlvm_ios_UIWebViewDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_UIWebViewDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIWebViewDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_loadRequest___org_xmlvm_ios_NSURLRequest]

    XMLVM_VAR_THIZ;
    [thiz  loadRequest:(NSURLRequest*) (((org_xmlvm_ios_NSURLRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_loadHTMLString___java_lang_String_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  loadHTMLString:ObjCVar1 baseURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_loadData___org_xmlvm_ios_NSData_java_lang_String_java_lang_String_org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    [thiz  loadData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) MIMEType:ObjCVar2 textEncodingName:ObjCVar3 baseURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar2 release];

    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getRequest__]

    XMLVM_VAR_THIZ;
    NSURLRequest* var0 = [thiz request];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_reload__]

    XMLVM_VAR_THIZ;
    [thiz reload];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_stopLoading__]

    XMLVM_VAR_THIZ;
    [thiz stopLoading];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_goBack__]

    XMLVM_VAR_THIZ;
    [thiz goBack];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_goForward__]

    XMLVM_VAR_THIZ;
    [thiz goForward];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_canGoBack__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz canGoBack];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_canGoForward__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz canGoForward];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_isLoading__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isLoading];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_stringByEvaluatingJavaScriptFromString___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  stringByEvaluatingJavaScriptFromString:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getScalesPageToFit__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz scalesPageToFit];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_setScalesPageToFit___boolean]

    XMLVM_VAR_THIZ;
    [thiz setScalesPageToFit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getDetectsPhoneNumbers__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz detectsPhoneNumbers];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_setDetectsPhoneNumbers___boolean]

    XMLVM_VAR_THIZ;
    [thiz setDetectsPhoneNumbers:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getDataDetectorTypes__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz dataDetectorTypes];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_setDataDetectorTypes___int]

    XMLVM_VAR_THIZ;
    [thiz setDataDetectorTypes:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getAllowsInlineMediaPlayback__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsInlineMediaPlayback];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_setAllowsInlineMediaPlayback___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsInlineMediaPlayback:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_getMediaPlaybackRequiresUserAction__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz mediaPlaybackRequiresUserAction];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWebView_setMediaPlaybackRequiresUserAction___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMediaPlaybackRequiresUserAction:n1];

    
//XMLVM_END_WRAPPER
