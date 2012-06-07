
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKMatchmakerViewController (GKMatchmakerViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKMatchmakerViewController (GKMatchmakerViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKMatchmakerViewController.classInitialized)
        __INIT_org_xmlvm_ios_GKMatchmakerViewController();
}
@end

void org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKMatchmakerViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKMatchmakerViewController();
        org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKMatchmakerViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKMatchmakerViewController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT____org_xmlvm_ios_GKMatchRequest]

    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc] initWithMatchRequest:(GKMatchRequest*) (((org_xmlvm_ios_GKMatchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT____org_xmlvm_ios_GKInvite]

    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc] initWithInvite:(GKInvite*) (((org_xmlvm_ios_GKInvite*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT___]
    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc ] init];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT____org_xmlvm_ios_UIViewController]

    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT___]
    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc ] init];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT___]
    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc ] init];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT___]
    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc ] init];
    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController___INIT___]

    GKMatchmakerViewController* var0 = [[GKMatchmakerViewController alloc]init];

    org_xmlvm_ios_GKMatchmakerViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController_getMatchmakerDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController_setMatchmakerDelegate___org_xmlvm_ios_GKMatchmakerViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_GKMatchmakerViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_GKMatchmakerViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setMatchmakerDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController_getMatchRequest__]

    XMLVM_VAR_THIZ;
    GKMatchRequest* var0 = [thiz matchRequest];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController_isHosted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHosted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController_setHosted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHosted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmakerViewController_setHostedPlayerReady___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setHostedPlayerReady:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
