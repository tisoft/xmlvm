
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIViewController (UIViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIViewController (UIViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIViewController.classInitialized)
        __INIT_org_xmlvm_ios_UIViewController();
}
@end

void org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIViewControllerWrapper class] || [obj class] == [UIViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIViewController();
        org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}

            @interface UIViewControllerWrapper (UIViewControllerWrapperCategory)
            - (void) superLoadView;
            - (void) superViewDidLoad;
            - (void) superViewDidDisappear:(BOOL) animated;
            @end

            @implementation UIViewControllerWrapper (UIViewControllerWrapperCategory)
            - (void) superLoadView {
                [super loadView];
            }
            - (void) superViewDidLoad {
                [super viewDidLoad];
            }
            - (void) superViewDidDisappear:(BOOL) animated{
                [super viewDidDisappear:animated];
            }
            @end 
        //XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIViewController]
__DELETE_org_xmlvm_ios_UIResponder(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    UIViewController* var0 = [[UIViewControllerWrapper alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController___INIT___]
    UIViewControllerWrapper* var0 = [[UIViewControllerWrapper alloc ] init];
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController___INIT___]
    UIViewControllerWrapper* var0 = [[UIViewControllerWrapper alloc ] init];
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController___INIT___]

    UIViewController* var0 = [[UIViewControllerWrapper alloc]init];

    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_presentMoviePlayerViewControllerAnimated___org_xmlvm_ios_MPMoviePlayerViewController]

    XMLVM_VAR_THIZ;
    [thiz  presentMoviePlayerViewControllerAnimated:(MPMoviePlayerViewController*) (((org_xmlvm_ios_MPMoviePlayerViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_dismissMoviePlayerViewControllerAnimated__]

    XMLVM_VAR_THIZ;
    [thiz dismissMoviePlayerViewControllerAnimated];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getNavigationItem__]

    XMLVM_VAR_THIZ;
    UINavigationItem* var0 = [thiz navigationItem];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getHidesBottomBarWhenPushed__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz hidesBottomBarWhenPushed];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setHidesBottomBarWhenPushed___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHidesBottomBarWhenPushed:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getNavigationController__]

    XMLVM_VAR_THIZ;
    UINavigationController* var0 = [thiz navigationController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getToolbarItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz toolbarItems];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setToolbarItems___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setToolbarItems:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setToolbarItems___java_util_List_boolean]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setToolbarItems:ObjCVar1 animated:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getContentSizeForViewInPopover__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz contentSizeForViewInPopover];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setContentSizeForViewInPopover___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setContentSizeForViewInPopover:toCGSize(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_isModalInPopover__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isModalInPopover];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setModalInPopover___boolean]

    XMLVM_VAR_THIZ;
    [thiz setModalInPopover:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getSplitViewController__]

    XMLVM_VAR_THIZ;
    UISplitViewController* var0 = [thiz splitViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getTabBarItem__]

    XMLVM_VAR_THIZ;
    UITabBarItem* var0 = [thiz tabBarItem];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setTabBarItem___org_xmlvm_ios_UITabBarItem]

    XMLVM_VAR_THIZ;
    [thiz setTabBarItem:(UITabBarItem*) (((org_xmlvm_ios_UITabBarItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getTabBarController__]

    XMLVM_VAR_THIZ;
    UITabBarController* var0 = [thiz tabBarController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz view];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_loadView__]

                XMLVM_VAR_THIZ;
                [thiz superLoadView]; 
            
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_viewDidLoad__]

                XMLVM_VAR_THIZ;
                [thiz superViewDidLoad]; 
            
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_viewDidUnload__]

    XMLVM_VAR_THIZ;
    [thiz viewDidUnload];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_isViewLoaded__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isViewLoaded];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getNibName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz nibName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getNibBundle__]

    XMLVM_VAR_THIZ;
    NSBundle* var0 = [thiz nibBundle];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_viewWillAppear___boolean]

    XMLVM_VAR_THIZ;
    [thiz  viewWillAppear:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_viewDidAppear___boolean]

    XMLVM_VAR_THIZ;
    [thiz  viewDidAppear:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_viewWillDisappear___boolean]

    XMLVM_VAR_THIZ;
    [thiz  viewWillDisappear:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_viewDidDisappear___boolean]

                XMLVM_VAR_THIZ;
                [thiz superViewDidDisappear:n1]; 
            
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getTitle__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz title];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setTitle___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setTitle:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_didReceiveMemoryWarning__]

    XMLVM_VAR_THIZ;
    [thiz didReceiveMemoryWarning];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_presentModalViewController___org_xmlvm_ios_UIViewController_boolean]

    XMLVM_VAR_THIZ;
    [thiz  presentModalViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_dismissModalViewControllerAnimated___boolean]

    XMLVM_VAR_THIZ;
    [thiz  dismissModalViewControllerAnimated:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getModalViewController__]

    XMLVM_VAR_THIZ;
    UIViewController* var0 = [thiz modalViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getModalTransitionStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz modalTransitionStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setModalTransitionStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setModalTransitionStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getModalPresentationStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz modalPresentationStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setModalPresentationStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setModalPresentationStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_disablesAutomaticKeyboardDismissal__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz disablesAutomaticKeyboardDismissal];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getWantsFullScreenLayout__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz wantsFullScreenLayout];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setWantsFullScreenLayout___boolean]

    XMLVM_VAR_THIZ;
    [thiz setWantsFullScreenLayout:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getParentViewController__]

    XMLVM_VAR_THIZ;
    UIViewController* var0 = [thiz parentViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_shouldAutorotateToInterfaceOrientation___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  shouldAutorotateToInterfaceOrientation:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_rotatingHeaderView__]

    XMLVM_VAR_THIZ;
    
    UIView* var0 = [thiz rotatingHeaderView];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_rotatingFooterView__]

    XMLVM_VAR_THIZ;
    
    UIView* var0 = [thiz rotatingFooterView];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getInterfaceOrientation__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz interfaceOrientation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_willRotateToInterfaceOrientation___int_double]

    XMLVM_VAR_THIZ;
    [thiz  willRotateToInterfaceOrientation:n1 duration:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_didRotateFromInterfaceOrientation___int]

    XMLVM_VAR_THIZ;
    [thiz  didRotateFromInterfaceOrientation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_willAnimateRotationToInterfaceOrientation___int_double]

    XMLVM_VAR_THIZ;
    [thiz  willAnimateRotationToInterfaceOrientation:n1 duration:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_willAnimateFirstHalfOfRotationToInterfaceOrientation___int_double]

    XMLVM_VAR_THIZ;
    [thiz  willAnimateFirstHalfOfRotationToInterfaceOrientation:n1 duration:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_didAnimateFirstHalfOfRotationToInterfaceOrientation___int]

    XMLVM_VAR_THIZ;
    [thiz  didAnimateFirstHalfOfRotationToInterfaceOrientation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_willAnimateSecondHalfOfRotationFromInterfaceOrientation___int_double]

    XMLVM_VAR_THIZ;
    [thiz  willAnimateSecondHalfOfRotationFromInterfaceOrientation:n1 duration:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_isEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setEditing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEditing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_setEditing___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setEditing:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_editButtonItem__]

    XMLVM_VAR_THIZ;
    
    UIBarButtonItem* var0 = [thiz editButtonItem];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewController_getSearchDisplayController__]

    XMLVM_VAR_THIZ;
    UISearchDisplayController* var0 = [thiz searchDisplayController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
