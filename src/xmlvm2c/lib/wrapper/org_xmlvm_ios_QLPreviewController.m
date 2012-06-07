
//XMLVM_BEGIN_IMPLEMENTATION
@interface QLPreviewController (QLPreviewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation QLPreviewController (QLPreviewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_QLPreviewController.classInitialized)
        __INIT_org_xmlvm_ios_QLPreviewController();
}
@end

void org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [QLPreviewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_QLPreviewController();
        org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_QLPreviewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_QLPreviewController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController___INIT___]
    QLPreviewController* var0 = [[QLPreviewController alloc ] init];
    org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    QLPreviewController* var0 = [[QLPreviewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController___INIT___]
    QLPreviewController* var0 = [[QLPreviewController alloc ] init];
    org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController___INIT___]
    QLPreviewController* var0 = [[QLPreviewController alloc ] init];
    org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController___INIT___]

    QLPreviewController* var0 = [[QLPreviewController alloc]init];

    org_xmlvm_ios_QLPreviewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_canPreviewItem___org_xmlvm_ios_QLPreviewItem]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_getDataSource__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_setDataSource___org_xmlvm_ios_QLPreviewControllerDataSource]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_QLPreviewControllerDataSource_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_QLPreviewControllerDataSource(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDataSource:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_reloadData__]

    XMLVM_VAR_THIZ;
    [thiz reloadData];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_refreshCurrentPreviewItem__]

    XMLVM_VAR_THIZ;
    [thiz refreshCurrentPreviewItem];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_getCurrentPreviewItemIndex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz currentPreviewItemIndex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_setCurrentPreviewItemIndex___int]

    XMLVM_VAR_THIZ;
    [thiz setCurrentPreviewItemIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_getCurrentPreviewItem__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_getDelegate__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz delegate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_QLPreviewController_setDelegate___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setDelegate:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
