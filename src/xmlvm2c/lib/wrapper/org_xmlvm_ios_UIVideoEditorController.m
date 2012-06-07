
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIVideoEditorController (UIVideoEditorControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIVideoEditorController (UIVideoEditorControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIVideoEditorController.classInitialized)
        __INIT_org_xmlvm_ios_UIVideoEditorController();
}
@end

void org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIVideoEditorController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIVideoEditorController();
        org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIVideoEditorController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIVideoEditorController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT___]
    UIVideoEditorController* var0 = [[UIVideoEditorController alloc ] init];
    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT____org_xmlvm_ios_UIViewController]

    UIVideoEditorController* var0 = [[UIVideoEditorController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT___]
    UIVideoEditorController* var0 = [[UIVideoEditorController alloc ] init];
    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    UIVideoEditorController* var0 = [[UIVideoEditorController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT___]
    UIVideoEditorController* var0 = [[UIVideoEditorController alloc ] init];
    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT___]
    UIVideoEditorController* var0 = [[UIVideoEditorController alloc ] init];
    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController___INIT___]

    UIVideoEditorController* var0 = [[UIVideoEditorController alloc]init];

    org_xmlvm_ios_UIVideoEditorController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_canEditVideoAtPath___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 =  [UIVideoEditorController  canEditVideoAtPath:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_setDelegate___org_xmlvm_ios_UINavigationControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_UINavigationControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UINavigationControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_getVideoPath__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz videoPath];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_setVideoPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setVideoPath:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_getVideoMaximumDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz videoMaximumDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_setVideoMaximumDuration___double]

    XMLVM_VAR_THIZ;
    [thiz setVideoMaximumDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_getVideoQuality__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz videoQuality];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIVideoEditorController_setVideoQuality___int]

    XMLVM_VAR_THIZ;
    [thiz setVideoQuality:n1];

    
//XMLVM_END_WRAPPER
