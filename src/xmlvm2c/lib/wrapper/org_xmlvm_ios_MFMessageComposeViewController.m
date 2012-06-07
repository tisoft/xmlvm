
//XMLVM_BEGIN_IMPLEMENTATION
@interface MFMessageComposeViewController (MFMessageComposeViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation MFMessageComposeViewController (MFMessageComposeViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MFMessageComposeViewController.classInitialized)
        __INIT_org_xmlvm_ios_MFMessageComposeViewController();
}
@end

void org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MFMessageComposeViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MFMessageComposeViewController();
        org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MFMessageComposeViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MFMessageComposeViewController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT___]
    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc ] init];
    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT____org_xmlvm_ios_UIViewController]

    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT___]
    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc ] init];
    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT___]
    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc ] init];
    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT___]
    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc ] init];
    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController___INIT___]

    MFMessageComposeViewController* var0 = [[MFMessageComposeViewController alloc]init];

    org_xmlvm_ios_MFMessageComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_canSendText__]

    BOOL var0 =  [MFMessageComposeViewController canSendText];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_getMessageComposeDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_setMessageComposeDelegate___org_xmlvm_ios_MFMessageComposeViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_MFMessageComposeViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_MFMessageComposeViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setMessageComposeDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_getRecipients__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz recipients];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_setRecipients___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setRecipients:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_getBody__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz body];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMessageComposeViewController_setBody___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setBody:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
