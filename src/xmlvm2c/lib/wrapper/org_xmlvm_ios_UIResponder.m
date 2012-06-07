
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIResponder (UIResponderWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIResponder (UIResponderWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIResponder.classInitialized)
        __INIT_org_xmlvm_ios_UIResponder();
}
@end

void org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIResponderWrapper class] || [obj class] == [UIResponder class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIResponder();
        org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIResponder]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIResponder]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder___INIT___]
    UIResponderWrapper* var0 = [[UIResponderWrapper alloc ] init];
    org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder___INIT___]

    UIResponder* var0 = [[UIResponderWrapper alloc]init];

    org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_nextResponder__]

    XMLVM_VAR_THIZ;
    
    UIResponder* var0 = [thiz nextResponder];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_canBecomeFirstResponder__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz canBecomeFirstResponder];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_becomeFirstResponder__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz becomeFirstResponder];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_canResignFirstResponder__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz canResignFirstResponder];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_resignFirstResponder__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz resignFirstResponder];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_isFirstResponder__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isFirstResponder];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_touchesBegan___java_util_Set_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  touchesBegan:ObjCVar1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_touchesMoved___java_util_Set_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  touchesMoved:ObjCVar1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_touchesEnded___java_util_Set_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  touchesEnded:ObjCVar1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_touchesCancelled___java_util_Set_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  touchesCancelled:ObjCVar1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_motionBegan___int_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  motionBegan:n1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_motionEnded___int_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  motionEnded:n1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_motionCancelled___int_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  motionCancelled:n1 withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_remoteControlReceivedWithEvent___org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  remoteControlReceivedWithEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_canPerformAction___org_xmlvm_ios_SEL_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_getUndoManager__]

    XMLVM_VAR_THIZ;
    NSUndoManager* var0 = [thiz undoManager];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_getInputView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz inputView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_getInputAccessoryView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz inputAccessoryView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIResponder_reloadInputViews__]

    XMLVM_VAR_THIZ;
    [thiz reloadInputViews];

    
//XMLVM_END_WRAPPER
