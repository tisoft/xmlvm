
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPanGestureRecognizer (UIPanGestureRecognizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPanGestureRecognizer (UIPanGestureRecognizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPanGestureRecognizer.classInitialized)
        __INIT_org_xmlvm_ios_UIPanGestureRecognizer();
}
@end

void org_xmlvm_ios_UIPanGestureRecognizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIGestureRecognizer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPanGestureRecognizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPanGestureRecognizer();
        org_xmlvm_ios_UIPanGestureRecognizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPanGestureRecognizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPanGestureRecognizer]
__DELETE_org_xmlvm_ios_UIGestureRecognizer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer___INIT___]
    UIPanGestureRecognizer* var0 = [[UIPanGestureRecognizer alloc ] init];
    org_xmlvm_ios_UIPanGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer___INIT____java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer___INIT___]
    UIPanGestureRecognizer* var0 = [[UIPanGestureRecognizer alloc ] init];
    org_xmlvm_ios_UIPanGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer___INIT___]

    UIPanGestureRecognizer* var0 = [[UIPanGestureRecognizer alloc]init];

    org_xmlvm_ios_UIPanGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_getMinimumNumberOfTouches__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz minimumNumberOfTouches];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_setMinimumNumberOfTouches___int]

    XMLVM_VAR_THIZ;
    [thiz setMinimumNumberOfTouches:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_getMaximumNumberOfTouches__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz maximumNumberOfTouches];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_setMaximumNumberOfTouches___int]

    XMLVM_VAR_THIZ;
    [thiz setMaximumNumberOfTouches:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_translationInView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  translationInView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_setTranslation___org_xmlvm_ios_CGPoint_org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  setTranslation:toCGPoint(n1) inView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPanGestureRecognizer_velocityInView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  velocityInView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER
