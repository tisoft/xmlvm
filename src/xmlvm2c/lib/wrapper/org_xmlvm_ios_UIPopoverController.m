
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPopoverController (UIPopoverControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPopoverController (UIPopoverControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPopoverController.classInitialized)
        __INIT_org_xmlvm_ios_UIPopoverController();
}
@end

void org_xmlvm_ios_UIPopoverController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPopoverController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPopoverController();
        org_xmlvm_ios_UIPopoverController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPopoverController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPopoverController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController___INIT____org_xmlvm_ios_UIViewController]

    UIPopoverController* var0 = [[UIPopoverController alloc] initWithContentViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIPopoverController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController___INIT___]
    UIPopoverController* var0 = [[UIPopoverController alloc ] init];
    org_xmlvm_ios_UIPopoverController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController___INIT___]

    UIPopoverController* var0 = [[UIPopoverController alloc]init];

    org_xmlvm_ios_UIPopoverController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_setDelegate___org_xmlvm_ios_UIPopoverControllerDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UIPopoverControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIPopoverControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_getContentViewController__]

    XMLVM_VAR_THIZ;
    UIViewController* var0 = [thiz contentViewController];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_setContentViewController___org_xmlvm_ios_UIViewController]

    XMLVM_VAR_THIZ;
    [thiz setContentViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_setContentViewController___org_xmlvm_ios_UIViewController_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setContentViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_getPopoverContentSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz popoverContentSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_setPopoverContentSize___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setPopoverContentSize:toCGSize(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_setPopoverContentSize___org_xmlvm_ios_CGSize_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setPopoverContentSize:toCGSize(n1) animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_isPopoverVisible__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPopoverVisible];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_getPopoverArrowDirection__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz popoverArrowDirection];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_getPassthroughViews__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz passthroughViews];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_setPassthroughViews___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setPassthroughViews:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_presentPopoverFromRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIView_int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  presentPopoverFromRect:toCGRect(n1) inView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) permittedArrowDirections:n3 animated:n4];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_presentPopoverFromBarButtonItem___org_xmlvm_ios_UIBarButtonItem_int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  presentPopoverFromBarButtonItem:(UIBarButtonItem*) (((org_xmlvm_ios_UIBarButtonItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) permittedArrowDirections:n2 animated:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPopoverController_dismissPopoverAnimated___boolean]

    XMLVM_VAR_THIZ;
    [thiz  dismissPopoverAnimated:n1];

    
//XMLVM_END_WRAPPER
