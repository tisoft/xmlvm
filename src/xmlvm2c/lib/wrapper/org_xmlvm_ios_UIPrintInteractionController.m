
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPrintInteractionController (UIPrintInteractionControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPrintInteractionController (UIPrintInteractionControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPrintInteractionController.classInitialized)
        __INIT_org_xmlvm_ios_UIPrintInteractionController();
}
@end

void org_xmlvm_ios_UIPrintInteractionController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPrintInteractionController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPrintInteractionController();
        org_xmlvm_ios_UIPrintInteractionController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPrintInteractionController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPrintInteractionController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController___INIT___]
    UIPrintInteractionController* var0 = [[UIPrintInteractionController alloc ] init];
    org_xmlvm_ios_UIPrintInteractionController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController___INIT___]

    UIPrintInteractionController* var0 = [[UIPrintInteractionController alloc]init];

    org_xmlvm_ios_UIPrintInteractionController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_isPrintingAvailable__]

    BOOL var0 =  [UIPrintInteractionController isPrintingAvailable];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_printableUTIs__]

    NSSet* var0 =  [UIPrintInteractionController printableUTIs];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_canPrintURL___org_xmlvm_ios_NSURL]

    BOOL var0 =  [UIPrintInteractionController  canPrintURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_canPrintData___org_xmlvm_ios_NSData]

    BOOL var0 =  [UIPrintInteractionController  canPrintData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_sharedPrintController__]

    UIPrintInteractionController* var0 =  [UIPrintInteractionController sharedPrintController];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getPrintInfo__]

    XMLVM_VAR_THIZ;
    UIPrintInfo* var0 = [thiz printInfo];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setPrintInfo___org_xmlvm_ios_UIPrintInfo]

    XMLVM_VAR_THIZ;
    [thiz setPrintInfo:(UIPrintInfo*) (((org_xmlvm_ios_UIPrintInfo*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setDelegate___org_xmlvm_ios_UIPrintInteractionControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_UIPrintInteractionControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIPrintInteractionControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getShowsPageRange__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsPageRange];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setShowsPageRange___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsPageRange:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getPrintPaper__]

    XMLVM_VAR_THIZ;
    UIPrintPaper* var0 = [thiz printPaper];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getPrintPageRenderer__]

    XMLVM_VAR_THIZ;
    UIPrintPageRenderer* var0 = [thiz printPageRenderer];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setPrintPageRenderer___org_xmlvm_ios_UIPrintPageRenderer]

    XMLVM_VAR_THIZ;
    [thiz setPrintPageRenderer:(UIPrintPageRenderer*) (((org_xmlvm_ios_UIPrintPageRenderer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getPrintFormatter__]

    XMLVM_VAR_THIZ;
    UIPrintFormatter* var0 = [thiz printFormatter];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setPrintFormatter___org_xmlvm_ios_UIPrintFormatter]

    XMLVM_VAR_THIZ;
    [thiz setPrintFormatter:(UIPrintFormatter*) (((org_xmlvm_ios_UIPrintFormatter*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getPrintingItem__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz printingItem];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setPrintingItem___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setPrintingItem:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_getPrintingItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz printingItems];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_setPrintingItems___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setPrintingItems:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_presentAnimated___boolean_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  presentAnimated:n1 completionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_presentFromRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIView_boolean_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  presentFromRect:toCGRect(n1) inView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n3 completionHandler:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_presentFromBarButtonItem___org_xmlvm_ios_UIBarButtonItem_boolean_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  presentFromBarButtonItem:(UIBarButtonItem*) (((org_xmlvm_ios_UIBarButtonItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2 completionHandler:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInteractionController_dismissAnimated___boolean]

    XMLVM_VAR_THIZ;
    [thiz  dismissAnimated:n1];

    
//XMLVM_END_WRAPPER
