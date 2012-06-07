
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaPickerController (MPMediaPickerControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaPickerController (MPMediaPickerControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaPickerController.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaPickerController();
}
@end

void org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaPickerController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaPickerController();
        org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaPickerController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaPickerController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController___INIT___]

    MPMediaPickerController* var0 = [[MPMediaPickerController alloc]init];

    org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController___INIT____int]

    MPMediaPickerController* var0 = [[MPMediaPickerController alloc] initWithMediaTypes:n1];
    org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    MPMediaPickerController* var0 = [[MPMediaPickerController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController___INIT___]
    MPMediaPickerController* var0 = [[MPMediaPickerController alloc ] init];
    org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController___INIT___]
    MPMediaPickerController* var0 = [[MPMediaPickerController alloc ] init];
    org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController___INIT___]
    MPMediaPickerController* var0 = [[MPMediaPickerController alloc ] init];
    org_xmlvm_ios_MPMediaPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_getMediaTypes__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz mediaTypes];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_setDelegate___org_xmlvm_ios_MPMediaPickerControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_MPMediaPickerControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_MPMediaPickerControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_getAllowsPickingMultipleItems__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsPickingMultipleItems];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_setAllowsPickingMultipleItems___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsPickingMultipleItems:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_getPrompt__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz prompt];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaPickerController_setPrompt___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setPrompt:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
