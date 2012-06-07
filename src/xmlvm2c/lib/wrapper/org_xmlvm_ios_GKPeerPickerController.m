
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKPeerPickerController (GKPeerPickerControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKPeerPickerController (GKPeerPickerControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKPeerPickerController.classInitialized)
        __INIT_org_xmlvm_ios_GKPeerPickerController();
}
@end

void org_xmlvm_ios_GKPeerPickerController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKPeerPickerController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKPeerPickerController();
        org_xmlvm_ios_GKPeerPickerController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKPeerPickerController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKPeerPickerController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController___INIT___]
    GKPeerPickerController* var0 = [[GKPeerPickerController alloc ] init];
    org_xmlvm_ios_GKPeerPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController___INIT___]

    GKPeerPickerController* var0 = [[GKPeerPickerController alloc]init];

    org_xmlvm_ios_GKPeerPickerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_getConnectionTypesMask__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz connectionTypesMask];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_setConnectionTypesMask___int]

    XMLVM_VAR_THIZ;
    [thiz setConnectionTypesMask:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_setDelegate___org_xmlvm_ios_GKPeerPickerControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_GKPeerPickerControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_GKPeerPickerControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_show__]

    XMLVM_VAR_THIZ;
    [thiz show];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_dismiss__]

    XMLVM_VAR_THIZ;
    [thiz dismiss];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPeerPickerController_isVisible__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isVisible];
    
    return var0;
//XMLVM_END_WRAPPER
