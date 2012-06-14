
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIApplication (UIApplicationWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIApplication (UIApplicationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIApplication.classInitialized)
        __INIT_org_xmlvm_ios_UIApplication();
}
@end

void org_xmlvm_ios_UIApplication_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIApplication class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIApplication();
        org_xmlvm_ios_UIApplication_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIApplication]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIApplication]
__DELETE_org_xmlvm_ios_UIResponder(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication___INIT___]
    UIApplication* var0 = [[UIApplication alloc ] init];
    org_xmlvm_ios_UIApplication_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication___INIT___]
    UIApplication* var0 = [[UIApplication alloc ] init];
    org_xmlvm_ios_UIApplication_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication___INIT___]

    UIApplication* var0 = [[UIApplication alloc]init];

    org_xmlvm_ios_UIApplication_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_sharedApplication__]

    UIApplication* var0 =  [UIApplication sharedApplication];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setDelegate___org_xmlvm_ios_UIApplicationDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UIApplicationDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIApplicationDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_beginIgnoringInteractionEvents__]

    XMLVM_VAR_THIZ;
    [thiz beginIgnoringInteractionEvents];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_endIgnoringInteractionEvents__]

    XMLVM_VAR_THIZ;
    [thiz endIgnoringInteractionEvents];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_isIgnoringInteractionEvents__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isIgnoringInteractionEvents];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_isIdleTimerDisabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isIdleTimerDisabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setIdleTimerDisabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setIdleTimerDisabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_openURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  openURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_canOpenURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canOpenURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_sendEvent___org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  sendEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getKeyWindow__]

    XMLVM_VAR_THIZ;
    UIWindow* var0 = [thiz keyWindow];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getWindows__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz windows];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_sendAction___org_xmlvm_ios_SEL_java_lang_Object_java_lang_Object_org_xmlvm_ios_UIEvent]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_isNetworkActivityIndicatorVisible__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isNetworkActivityIndicatorVisible];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setNetworkActivityIndicatorVisible___boolean]

    XMLVM_VAR_THIZ;
    [thiz setNetworkActivityIndicatorVisible:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getStatusBarStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz statusBarStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setStatusBarStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarStyle___int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setStatusBarStyle:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_isStatusBarHidden__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isStatusBarHidden];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarHidden___boolean]

    XMLVM_VAR_THIZ;
    [thiz setStatusBarHidden:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarHidden___boolean_int]

    XMLVM_VAR_THIZ;
    [thiz  setStatusBarHidden:n1 withAnimation:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getStatusBarOrientation__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz statusBarOrientation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarOrientation___int]

    XMLVM_VAR_THIZ;
    [thiz setStatusBarOrientation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarOrientation___int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setStatusBarOrientation:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getStatusBarOrientationAnimationDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz statusBarOrientationAnimationDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getStatusBarFrame__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz statusBarFrame];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getApplicationIconBadgeNumber__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz applicationIconBadgeNumber];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setApplicationIconBadgeNumber___int]

    XMLVM_VAR_THIZ;
    [thiz setApplicationIconBadgeNumber:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getApplicationSupportsShakeToEdit__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz applicationSupportsShakeToEdit];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setApplicationSupportsShakeToEdit___boolean]

    XMLVM_VAR_THIZ;
    [thiz setApplicationSupportsShakeToEdit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getApplicationState__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz applicationState];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getBackgroundTimeRemaining__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz backgroundTimeRemaining];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_beginBackgroundTaskWithExpirationHandler___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  beginBackgroundTaskWithExpirationHandler:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_endBackgroundTask___int]

    XMLVM_VAR_THIZ;
    [thiz  endBackgroundTask:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setKeepAliveTimeout___double_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  setKeepAliveTimeout:n1 handler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_clearKeepAliveTimeout__]

    XMLVM_VAR_THIZ;
    [thiz clearKeepAliveTimeout];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_isProtectedDataAvailable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isProtectedDataAvailable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_registerForRemoteNotificationTypes___int]

    XMLVM_VAR_THIZ;
    [thiz  registerForRemoteNotificationTypes:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_unregisterForRemoteNotifications__]

    XMLVM_VAR_THIZ;
    [thiz unregisterForRemoteNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_enabledRemoteNotificationTypes__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz enabledRemoteNotificationTypes];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_presentLocalNotificationNow___org_xmlvm_ios_UILocalNotification]

    XMLVM_VAR_THIZ;
    [thiz  presentLocalNotificationNow:(UILocalNotification*) (((org_xmlvm_ios_UILocalNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_scheduleLocalNotification___org_xmlvm_ios_UILocalNotification]

    XMLVM_VAR_THIZ;
    [thiz  scheduleLocalNotification:(UILocalNotification*) (((org_xmlvm_ios_UILocalNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_cancelLocalNotification___org_xmlvm_ios_UILocalNotification]

    XMLVM_VAR_THIZ;
    [thiz  cancelLocalNotification:(UILocalNotification*) (((org_xmlvm_ios_UILocalNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_cancelAllLocalNotifications__]

    XMLVM_VAR_THIZ;
    [thiz cancelAllLocalNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_getScheduledLocalNotifications__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz scheduledLocalNotifications];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setScheduledLocalNotifications___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setScheduledLocalNotifications:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_beginReceivingRemoteControlEvents__]

    XMLVM_VAR_THIZ;
    [thiz beginReceivingRemoteControlEvents];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_endReceivingRemoteControlEvents__]

    XMLVM_VAR_THIZ;
    [thiz endReceivingRemoteControlEvents];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_isProximitySensingEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isProximitySensingEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setProximitySensingEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setProximitySensingEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_setStatusBarHidden___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setStatusBarHidden:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_main___int_byte_2ARRAY_java_lang_String_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIApplication_main___java_lang_String_1ARRAY_java_lang_Class_java_lang_Class]

                
	setAppToRun((*(JAVA_OBJECT (*)(JAVA_OBJECT)) ((java_lang_Class*) n3)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Class_newInstance__])(n3));
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    UIApplicationMain(0 /*argc*/, nil /*argv*/, @"UIApplication", @"UIApplicationDelegateWrapper");
    [pool release]; 

            
//XMLVM_END_WRAPPER