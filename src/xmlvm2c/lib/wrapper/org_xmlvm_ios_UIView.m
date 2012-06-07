
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIView (UIViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIView (UIViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIView.classInitialized)
        __INIT_org_xmlvm_ios_UIView();
}
@end

void org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIResponder_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIViewWrapper class] || [obj class] == [UIView class] || ([NSStringFromClass([obj class]) isEqual:@"UILayoutContainerView"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIView();
        org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIView]
__DELETE_org_xmlvm_ios_UIResponder(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView___INIT____org_xmlvm_ios_CGRect]

    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];

    UIView* var0 = [[UIViewWrapper alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, var0);
    [ p release];
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView___INIT___]
    UIViewWrapper* var0 = [[UIViewWrapper alloc ] init];
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView___INIT___]
    UIViewWrapper* var0 = [[UIViewWrapper alloc ] init];
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView___INIT___]

    UIView* var0 = [[UIViewWrapper alloc]init];

    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_viewPrintFormatter__]

    XMLVM_VAR_THIZ;
    
    UIViewPrintFormatter* var0 = [thiz viewPrintFormatter];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_drawRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIViewPrintFormatter]

    XMLVM_VAR_THIZ;
    [thiz  drawRect:toCGRect(n1) forViewPrintFormatter:(UIViewPrintFormatter*) (((org_xmlvm_ios_UIViewPrintFormatter*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_endEditing___boolean]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  endEditing:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_layerClass__]

    Class* var0 =  [UIView layerClass];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_isUserInteractionEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isUserInteractionEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setUserInteractionEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setUserInteractionEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getTag__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz tag];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setTag___int]

    XMLVM_VAR_THIZ;
    [thiz setTag:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getLayer__]

    XMLVM_VAR_THIZ;
    CALayer* var0 = [thiz layer];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getFrame__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz frame];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setFrame___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setFrame:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getBounds__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz bounds];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setBounds:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getCenter__]

    XMLVM_VAR_THIZ;
    CGPoint var0 = [thiz center];
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setCenter___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz setCenter:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getTransform__]

    XMLVM_VAR_THIZ;
    CGAffineTransform var0 = [thiz transform];
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setTransform___org_xmlvm_ios_CGAffineTransform]

    XMLVM_VAR_THIZ;
    [thiz setTransform:toCGAffineTransform(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getContentScaleFactor__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz contentScaleFactor];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setContentScaleFactor___float]

    XMLVM_VAR_THIZ;
    [thiz setContentScaleFactor:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_isMultipleTouchEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isMultipleTouchEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setMultipleTouchEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMultipleTouchEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_isExclusiveTouch__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isExclusiveTouch];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setExclusiveTouch___boolean]

    XMLVM_VAR_THIZ;
    [thiz setExclusiveTouch:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_hitTest___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    
    UIView* var0 = [thiz  hitTest:toCGPoint(n1) withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_pointInside___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIEvent]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  pointInside:toCGPoint(n1) withEvent:(UIEvent*) (((org_xmlvm_ios_UIEvent*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_convertPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  convertPoint:toCGPoint(n1) toView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_convertPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  convertPoint:toCGPoint(n1) fromView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_convertRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  convertRect:toCGRect(n1) toView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_convertRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  convertRect:toCGRect(n1) fromView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getAutoresizesSubviews__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz autoresizesSubviews];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAutoresizesSubviews___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAutoresizesSubviews:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getAutoresizingMask__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz autoresizingMask];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAutoresizingMask___int]

    XMLVM_VAR_THIZ;
    [thiz setAutoresizingMask:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_sizeThatFits___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  sizeThatFits:toCGSize(n1)];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_sizeToFit__]

    XMLVM_VAR_THIZ;
    [thiz sizeToFit];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getSuperview__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz superview];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getSubviews__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz subviews];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getWindow__]

    XMLVM_VAR_THIZ;
    UIWindow* var0 = [thiz window];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_removeFromSuperview__]

    XMLVM_VAR_THIZ;
    [thiz removeFromSuperview];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_insertSubview___org_xmlvm_ios_UIView_int]

    XMLVM_VAR_THIZ;
    [thiz  insertSubview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_exchangeSubviewAtIndex___int_int]

    XMLVM_VAR_THIZ;
    [thiz  exchangeSubviewAtIndex:n1 withSubviewAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_addSubview___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  addSubview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_insertSubview___org_xmlvm_ios_UIView_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  insertSubview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) belowSubview:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_insertSubview___org_xmlvm_ios_UIView_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  insertSubview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) aboveSubview:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_bringSubviewToFront___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  bringSubviewToFront:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_sendSubviewToBack___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  sendSubviewToBack:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_didAddSubview___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  didAddSubview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_willRemoveSubview___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  willRemoveSubview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_willMoveToSuperview___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  willMoveToSuperview:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_didMoveToSuperview__]

    XMLVM_VAR_THIZ;
    [thiz didMoveToSuperview];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_willMoveToWindow___org_xmlvm_ios_UIWindow]

    XMLVM_VAR_THIZ;
    [thiz  willMoveToWindow:(UIWindow*) (((org_xmlvm_ios_UIWindow*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_didMoveToWindow__]

    XMLVM_VAR_THIZ;
    [thiz didMoveToWindow];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_isDescendantOfView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isDescendantOfView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_viewWithTag___int]

    XMLVM_VAR_THIZ;
    
    UIView* var0 = [thiz  viewWithTag:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setNeedsLayout__]

    XMLVM_VAR_THIZ;
    [thiz setNeedsLayout];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_layoutIfNeeded__]

    XMLVM_VAR_THIZ;
    [thiz layoutIfNeeded];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_layoutSubviews__]

    XMLVM_VAR_THIZ;
    [thiz layoutSubviews];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_drawRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setNeedsDisplay__]

    XMLVM_VAR_THIZ;
    [thiz setNeedsDisplay];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setNeedsDisplayInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  setNeedsDisplayInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getClipsToBounds__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz clipsToBounds];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setClipsToBounds___boolean]

    XMLVM_VAR_THIZ;
    [thiz setClipsToBounds:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getBackgroundColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz backgroundColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setBackgroundColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setBackgroundColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getAlpha__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz alpha];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAlpha___float]

    XMLVM_VAR_THIZ;
    [thiz setAlpha:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_isOpaque__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isOpaque];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setOpaque___boolean]

    XMLVM_VAR_THIZ;
    [thiz setOpaque:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getClearsContextBeforeDrawing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz clearsContextBeforeDrawing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setClearsContextBeforeDrawing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setClearsContextBeforeDrawing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_isHidden__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHidden];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setHidden___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHidden:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getContentMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz contentMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setContentMode___int]

    XMLVM_VAR_THIZ;
    [thiz setContentMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getContentStretch__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz contentStretch];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setContentStretch___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setContentStretch:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_beginAnimations___java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
     [UIView  beginAnimations:ObjCVar1 context:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_commitAnimations__]
 [UIView commitAnimations];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationDelegate___java_lang_Object]
 [UIView  setAnimationDelegate:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationWillStartSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationDidStopSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationDuration___double]
 [UIView  setAnimationDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationDelay___double]
 [UIView  setAnimationDelay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationStartDate___org_xmlvm_ios_NSDate]
 [UIView  setAnimationStartDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationCurve___int]
 [UIView  setAnimationCurve:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationRepeatCount___float]
 [UIView  setAnimationRepeatCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationRepeatAutoreverses___boolean]
 [UIView  setAnimationRepeatAutoreverses:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationBeginsFromCurrentState___boolean]
 [UIView  setAnimationBeginsFromCurrentState:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationTransition___int_org_xmlvm_ios_UIView_boolean]
 [UIView  setAnimationTransition:n1 forView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) cache:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setAnimationsEnabled___boolean]
 [UIView  setAnimationsEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_areAnimationsEnabled__]

    BOOL var0 =  [UIView areAnimationsEnabled];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_animateWithDuration___double_double_int_java_lang_Object_java_lang_Object]
 [UIView  animateWithDuration:n1 delay:n2 options:n3 animations:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj completion:((org_xmlvm_ios_NSObject*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_animateWithDuration___double_java_lang_Object_java_lang_Object]
 [UIView  animateWithDuration:n1 animations:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj completion:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_animateWithDuration___double_java_lang_Object]
 [UIView  animateWithDuration:n1 animations:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_transitionWithView___org_xmlvm_ios_UIView_double_int_java_lang_Object_java_lang_Object]
 [UIView  transitionWithView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) duration:n2 options:n3 animations:((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj completion:((org_xmlvm_ios_NSObject*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_transitionFromView___org_xmlvm_ios_UIView_org_xmlvm_ios_UIView_double_int_java_lang_Object]
 [UIView  transitionFromView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) toView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) duration:n3 options:n4 completion:((org_xmlvm_ios_NSObject*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_getGestureRecognizers__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz gestureRecognizers];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_setGestureRecognizers___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setGestureRecognizers:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_addGestureRecognizer___org_xmlvm_ios_UIGestureRecognizer]

    XMLVM_VAR_THIZ;
    [thiz  addGestureRecognizer:(UIGestureRecognizer*) (((org_xmlvm_ios_UIGestureRecognizer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIView_removeGestureRecognizer___org_xmlvm_ios_UIGestureRecognizer]

    XMLVM_VAR_THIZ;
    [thiz  removeGestureRecognizer:(UIGestureRecognizer*) (((org_xmlvm_ios_UIGestureRecognizer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
