
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIWindow (UIWindowWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIWindow (UIWindowWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIWindow.classInitialized)
        __INIT_org_xmlvm_ios_UIWindow();
}
@end

void org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIWindow class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIWindow();
        org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}

                JAVA_OBJECT window;
        //XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIWindow]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIWindow]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow___INIT___]
    UIWindow* var0 = [[UIWindow alloc ] init];
    org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow___INIT____org_xmlvm_ios_CGRect]

    UIWindow* var0 = [[UIWindow alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(me, var0);

                window = me;
            //XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow___INIT___]
    UIWindow* var0 = [[UIWindow alloc ] init];
    org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow___INIT___]
    UIWindow* var0 = [[UIWindow alloc ] init];
    org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow___INIT___]

    UIWindow* var0 = [[UIWindow alloc]init];

    org_xmlvm_ios_UIWindow_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_getScreen__]

    XMLVM_VAR_THIZ;
    UIScreen* var0 = [thiz screen];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_setScreen___org_xmlvm_ios_UIScreen]

    XMLVM_VAR_THIZ;
    [thiz setScreen:(UIScreen*) (((org_xmlvm_ios_UIScreen*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_getWindowLevel__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz windowLevel];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_setWindowLevel___float]

    XMLVM_VAR_THIZ;
    [thiz setWindowLevel:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_isKeyWindow__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isKeyWindow];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_becomeKeyWindow__]

    XMLVM_VAR_THIZ;
    [thiz becomeKeyWindow];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_resignKeyWindow__]

    XMLVM_VAR_THIZ;
    [thiz resignKeyWindow];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_makeKeyWindow__]

    XMLVM_VAR_THIZ;
    [thiz makeKeyWindow];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_makeKeyAndVisible__]

    XMLVM_VAR_THIZ;
    [thiz makeKeyAndVisible];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_getRootViewController__]

    XMLVM_VAR_THIZ;
    UIViewController* var0 = [thiz rootViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_setRootViewController___org_xmlvm_ios_UIViewController]

    XMLVM_VAR_THIZ;
    [thiz setRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_sendEvent___org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  sendEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_convertPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIWindow]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  convertPoint:toCGPoint(n1) toWindow:(UIWindow*) (((org_xmlvm_ios_UIWindow*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_convertPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIWindow]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  convertPoint:toCGPoint(n1) fromWindow:(UIWindow*) (((org_xmlvm_ios_UIWindow*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_convertRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIWindow]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  convertRect:toCGRect(n1) toWindow:(UIWindow*) (((org_xmlvm_ios_UIWindow*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIWindow_convertRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIWindow]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  convertRect:toCGRect(n1) fromWindow:(UIWindow*) (((org_xmlvm_ios_UIWindow*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER
