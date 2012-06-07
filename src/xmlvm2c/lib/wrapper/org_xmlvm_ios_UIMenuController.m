
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIMenuController (UIMenuControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIMenuController (UIMenuControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIMenuController.classInitialized)
        __INIT_org_xmlvm_ios_UIMenuController();
}
@end

void org_xmlvm_ios_UIMenuController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIMenuController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIMenuController();
        org_xmlvm_ios_UIMenuController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIMenuController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIMenuController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController___INIT___]
    UIMenuController* var0 = [[UIMenuController alloc ] init];
    org_xmlvm_ios_UIMenuController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController___INIT___]

    UIMenuController* var0 = [[UIMenuController alloc]init];

    org_xmlvm_ios_UIMenuController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_sharedMenuController__]

    UIMenuController* var0 =  [UIMenuController sharedMenuController];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_isMenuVisible__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isMenuVisible];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_setMenuVisible___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMenuVisible:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_setMenuVisible___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setMenuVisible:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_setTargetRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  setTargetRect:toCGRect(n1) inView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_getArrowDirection__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz arrowDirection];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_setArrowDirection___int]

    XMLVM_VAR_THIZ;
    [thiz setArrowDirection:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_getMenuItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz menuItems];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_setMenuItems___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setMenuItems:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_update__]

    XMLVM_VAR_THIZ;
    [thiz update];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMenuController_getMenuFrame__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz menuFrame];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER
