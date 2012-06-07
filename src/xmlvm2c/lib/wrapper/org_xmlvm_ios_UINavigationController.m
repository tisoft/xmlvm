
//XMLVM_BEGIN_IMPLEMENTATION
@interface UINavigationController (UINavigationControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UINavigationController (UINavigationControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UINavigationController.classInitialized)
        __INIT_org_xmlvm_ios_UINavigationController();
}
@end

void org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UINavigationController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UINavigationController();
        org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UINavigationController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UINavigationController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController___INIT____org_xmlvm_ios_UIViewController]

    UINavigationController* var0 = [[UINavigationController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController___INIT___]
    UINavigationController* var0 = [[UINavigationController alloc ] init];
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    UINavigationController* var0 = [[UINavigationController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController___INIT___]
    UINavigationController* var0 = [[UINavigationController alloc ] init];
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController___INIT___]
    UINavigationController* var0 = [[UINavigationController alloc ] init];
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController___INIT___]

    UINavigationController* var0 = [[UINavigationController alloc]init];

    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_pushViewController___org_xmlvm_ios_UIViewController_boolean]

    XMLVM_VAR_THIZ;
    [thiz  pushViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_popViewControllerAnimated___boolean]

    XMLVM_VAR_THIZ;
    
    UIViewController* var0 = [thiz  popViewControllerAnimated:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_popToViewController___org_xmlvm_ios_UIViewController_boolean]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  popToViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_popToRootViewControllerAnimated___boolean]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  popToRootViewControllerAnimated:n1];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_getTopViewController__]

    XMLVM_VAR_THIZ;
    UIViewController* var0 = [thiz topViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_getVisibleViewController__]

    XMLVM_VAR_THIZ;
    UIViewController* var0 = [thiz visibleViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_getViewControllers__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz viewControllers];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setViewControllers___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setViewControllers:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setViewControllers___java_util_List_boolean]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setViewControllers:ObjCVar1 animated:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_isNavigationBarHidden__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isNavigationBarHidden];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setNavigationBarHidden___boolean]

    XMLVM_VAR_THIZ;
    [thiz setNavigationBarHidden:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setNavigationBarHidden___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setNavigationBarHidden:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_getNavigationBar__]

    XMLVM_VAR_THIZ;
    UINavigationBar* var0 = [thiz navigationBar];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_isToolbarHidden__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isToolbarHidden];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setToolbarHidden___boolean]

    XMLVM_VAR_THIZ;
    [thiz setToolbarHidden:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setToolbarHidden___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setToolbarHidden:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_getToolbar__]

    XMLVM_VAR_THIZ;
    UIToolbar* var0 = [thiz toolbar];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UINavigationController_setDelegate___org_xmlvm_ios_UINavigationControllerDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UINavigationControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UINavigationControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER
