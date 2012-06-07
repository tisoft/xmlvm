
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKLeaderboardViewController (GKLeaderboardViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKLeaderboardViewController (GKLeaderboardViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKLeaderboardViewController.classInitialized)
        __INIT_org_xmlvm_ios_GKLeaderboardViewController();
}
@end

void org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKLeaderboardViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKLeaderboardViewController();
        org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKLeaderboardViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKLeaderboardViewController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT___]
    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc ] init];
    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT____org_xmlvm_ios_UIViewController]

    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT___]
    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc ] init];
    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT___]
    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc ] init];
    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT___]
    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc ] init];
    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController___INIT___]

    GKLeaderboardViewController* var0 = [[GKLeaderboardViewController alloc]init];

    org_xmlvm_ios_GKLeaderboardViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController_getTimeScope__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz timeScope];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController_setTimeScope___int]

    XMLVM_VAR_THIZ;
    [thiz setTimeScope:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController_getCategory__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz category];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController_setCategory___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setCategory:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController_getLeaderboardDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboardViewController_setLeaderboardDelegate___org_xmlvm_ios_GKLeaderboardViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_GKLeaderboardViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_GKLeaderboardViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setLeaderboardDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER
