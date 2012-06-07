
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKAchievementViewController (GKAchievementViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKAchievementViewController (GKAchievementViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKAchievementViewController.classInitialized)
        __INIT_org_xmlvm_ios_GKAchievementViewController();
}
@end

void org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKAchievementViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKAchievementViewController();
        org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKAchievementViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKAchievementViewController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT___]
    GKAchievementViewController* var0 = [[GKAchievementViewController alloc ] init];
    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT____org_xmlvm_ios_UIViewController]

    GKAchievementViewController* var0 = [[GKAchievementViewController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT___]
    GKAchievementViewController* var0 = [[GKAchievementViewController alloc ] init];
    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    GKAchievementViewController* var0 = [[GKAchievementViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT___]
    GKAchievementViewController* var0 = [[GKAchievementViewController alloc ] init];
    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT___]
    GKAchievementViewController* var0 = [[GKAchievementViewController alloc ] init];
    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController___INIT___]

    GKAchievementViewController* var0 = [[GKAchievementViewController alloc]init];

    org_xmlvm_ios_GKAchievementViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController_getAchievementDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKAchievementViewController_setAchievementDelegate___org_xmlvm_ios_GKAchievementViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_GKAchievementViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_GKAchievementViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setAchievementDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER
