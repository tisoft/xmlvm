
//XMLVM_BEGIN_IMPLEMENTATION
@interface EKEventViewController (EKEventViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation EKEventViewController (EKEventViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EKEventViewController.classInitialized)
        __INIT_org_xmlvm_ios_EKEventViewController();
}
@end

void org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EKEventViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EKEventViewController();
        org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EKEventViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EKEventViewController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController___INIT___]
    EKEventViewController* var0 = [[EKEventViewController alloc ] init];
    org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    EKEventViewController* var0 = [[EKEventViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController___INIT___]
    EKEventViewController* var0 = [[EKEventViewController alloc ] init];
    org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController___INIT___]
    EKEventViewController* var0 = [[EKEventViewController alloc ] init];
    org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController___INIT___]

    EKEventViewController* var0 = [[EKEventViewController alloc]init];

    org_xmlvm_ios_EKEventViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_setDelegate___org_xmlvm_ios_EKEventViewDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_EKEventViewDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_EKEventViewDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_getEvent__]

    XMLVM_VAR_THIZ;
    EKEvent* var0 = [thiz event];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_setEvent___org_xmlvm_ios_EKEvent]

    XMLVM_VAR_THIZ;
    [thiz setEvent:(EKEvent*) (((org_xmlvm_ios_EKEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_getAllowsEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_setAllowsEditing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsEditing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_getAllowsCalendarPreview__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsCalendarPreview];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EKEventViewController_setAllowsCalendarPreview___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsCalendarPreview:n1];

    
//XMLVM_END_WRAPPER
