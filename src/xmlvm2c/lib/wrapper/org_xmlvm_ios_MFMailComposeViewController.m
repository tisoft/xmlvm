
//XMLVM_BEGIN_IMPLEMENTATION
@interface MFMailComposeViewController (MFMailComposeViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation MFMailComposeViewController (MFMailComposeViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MFMailComposeViewController.classInitialized)
        __INIT_org_xmlvm_ios_MFMailComposeViewController();
}
@end

void org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MFMailComposeViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MFMailComposeViewController();
        org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MFMailComposeViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MFMailComposeViewController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT___]
    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc ] init];
    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT____org_xmlvm_ios_UIViewController]

    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT___]
    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc ] init];
    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT___]
    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc ] init];
    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT___]
    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc ] init];
    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController___INIT___]

    MFMailComposeViewController* var0 = [[MFMailComposeViewController alloc]init];

    org_xmlvm_ios_MFMailComposeViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_canSendMail__]

    BOOL var0 =  [MFMailComposeViewController canSendMail];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_getMailComposeDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_setMailComposeDelegate___org_xmlvm_ios_MFMailComposeViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_MFMailComposeViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_MFMailComposeViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setMailComposeDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_setSubject___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setSubject:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_setToRecipients___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setToRecipients:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_setCcRecipients___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setCcRecipients:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_setBccRecipients___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setBccRecipients:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_setMessageBody___java_lang_String_boolean]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setMessageBody:ObjCVar1 isHTML:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MFMailComposeViewController_addAttachmentData___org_xmlvm_ios_NSData_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    [thiz  addAttachmentData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) mimeType:ObjCVar2 fileName:ObjCVar3];
    [ObjCVar2 release];

    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER
