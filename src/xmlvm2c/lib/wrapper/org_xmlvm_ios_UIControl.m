
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIControl (UIControlWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIControl (UIControlWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIControl.classInitialized)
        __INIT_org_xmlvm_ios_UIControl();
}
@end

void org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIControl class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIControl();
        org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIControl]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIControl]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl___INIT___]
    UIControl* var0 = [[UIControl alloc ] init];
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl___INIT____org_xmlvm_ios_CGRect]

    UIControl* var0 = [[UIControl alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl___INIT___]
    UIControl* var0 = [[UIControl alloc ] init];
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl___INIT___]
    UIControl* var0 = [[UIControl alloc ] init];
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl___INIT___]

    UIControl* var0 = [[UIControl alloc]init];

    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_isEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_setEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_isSelected__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isSelected];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_setSelected___boolean]

    XMLVM_VAR_THIZ;
    [thiz setSelected:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_isHighlighted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHighlighted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_setHighlighted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHighlighted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_getContentVerticalAlignment__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz contentVerticalAlignment];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_setContentVerticalAlignment___int]

    XMLVM_VAR_THIZ;
    [thiz setContentVerticalAlignment:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_getContentHorizontalAlignment__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz contentHorizontalAlignment];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_setContentHorizontalAlignment___int]

    XMLVM_VAR_THIZ;
    [thiz setContentHorizontalAlignment:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_getState__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz state];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_isTracking__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isTracking];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_isTouchInside__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isTouchInside];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_beginTrackingWithTouch___org_xmlvm_ios_UITouch_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  beginTrackingWithTouch:(UITouch*) (((org_xmlvm_ios_UITouch*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_continueTrackingWithTouch___org_xmlvm_ios_UITouch_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  continueTrackingWithTouch:(UITouch*) (((org_xmlvm_ios_UITouch*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_endTrackingWithTouch___org_xmlvm_ios_UITouch_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  endTrackingWithTouch:(UITouch*) (((org_xmlvm_ios_UITouch*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_cancelTrackingWithEvent___org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    [thiz  cancelTrackingWithEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_addTarget___org_xmlvm_ios_UIControlDelegate_int]

                XMLVM_VAR_THIZ;
                org_xmlvm_ios_UIControlDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIControlDelegate(n1);
                [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
                [thiz addTarget:jwrapper->nativeDelegateWrapper_ action:@selector(raiseEvent:control:) forControlEvents:n2];
    			objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    			[jwrapper->nativeDelegateWrapper_ release];
    			XMLVMUtil_ArrayList_add(reference_array,n1);
            
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_removeTarget___java_lang_Object_org_xmlvm_ios_SEL_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_allTargets__]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz allTargets];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_allControlEvents__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz allControlEvents];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_actionsForTarget___java_lang_Object_int]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  actionsForTarget:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forControlEvent:n2];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_sendAction___org_xmlvm_ios_SEL_java_lang_Object_org_xmlvm_ios_UIEvent]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIControl_sendActionsForControlEvents___int]

    XMLVM_VAR_THIZ;
    [thiz  sendActionsForControlEvents:n1];

    
//XMLVM_END_WRAPPER
