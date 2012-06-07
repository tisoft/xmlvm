
//XMLVM_BEGIN_IMPLEMENTATION
@interface EKEventEditViewController (EKEventEditViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation EKEventEditViewController (EKEventEditViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EKEventEditViewController.classInitialized)
        __INIT_org_xmlvm_ios_EKEventEditViewController();
}
@end

void org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EKEventEditViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EKEventEditViewController();
        org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EKEventEditViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EKEventEditViewController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT___]
    EKEventEditViewController* var0 = [[EKEventEditViewController alloc ] init];
    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT____org_xmlvm_ios_UIViewController]

    EKEventEditViewController* var0 = [[EKEventEditViewController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT___]
    EKEventEditViewController* var0 = [[EKEventEditViewController alloc ] init];
    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    EKEventEditViewController* var0 = [[EKEventEditViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT___]
    EKEventEditViewController* var0 = [[EKEventEditViewController alloc ] init];
    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT___]
    EKEventEditViewController* var0 = [[EKEventEditViewController alloc ] init];
    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController___INIT___]

    EKEventEditViewController* var0 = [[EKEventEditViewController alloc]init];

    org_xmlvm_ios_EKEventEditViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController_getEditViewDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController_setEditViewDelegate___org_xmlvm_ios_EKEventEditViewDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_EKEventEditViewDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_EKEventEditViewDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setEditViewDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController_getEventStore__]

    XMLVM_VAR_THIZ;
    EKEventStore* var0 = [thiz eventStore];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController_setEventStore___org_xmlvm_ios_EKEventStore]

    XMLVM_VAR_THIZ;
    [thiz setEventStore:(EKEventStore*) (((org_xmlvm_ios_EKEventStore*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController_getEvent__]

    XMLVM_VAR_THIZ;
    EKEvent* var0 = [thiz event];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventEditViewController_setEvent___org_xmlvm_ios_EKEvent]

    XMLVM_VAR_THIZ;
    [thiz setEvent:(EKEvent*) (((org_xmlvm_ios_EKEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
