
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITouch (UITouchWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITouch (UITouchWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITouch.classInitialized)
        __INIT_org_xmlvm_ios_UITouch();
}
@end

void org_xmlvm_ios_UITouch_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITouch class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITouch();
        org_xmlvm_ios_UITouch_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITouch]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITouch]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch___INIT___]
    UITouch* var0 = [[UITouch alloc ] init];
    org_xmlvm_ios_UITouch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch___INIT___]

    UITouch* var0 = [[UITouch alloc]init];

    org_xmlvm_ios_UITouch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_getTimestamp__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz timestamp];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_getPhase__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz phase];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_getTapCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz tapCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_getWindow__]

    XMLVM_VAR_THIZ;
    UIWindow* var0 = [thiz window];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_getView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz view];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_getGestureRecognizers__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz gestureRecognizers];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_locationInView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  locationInView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITouch_previousLocationInView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  previousLocationInView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER
