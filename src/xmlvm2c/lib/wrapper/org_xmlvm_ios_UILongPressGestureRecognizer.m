
//XMLVM_BEGIN_IMPLEMENTATION
@interface UILongPressGestureRecognizer (UILongPressGestureRecognizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UILongPressGestureRecognizer (UILongPressGestureRecognizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UILongPressGestureRecognizer.classInitialized)
        __INIT_org_xmlvm_ios_UILongPressGestureRecognizer();
}
@end

void org_xmlvm_ios_UILongPressGestureRecognizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIGestureRecognizer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UILongPressGestureRecognizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UILongPressGestureRecognizer();
        org_xmlvm_ios_UILongPressGestureRecognizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UILongPressGestureRecognizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UILongPressGestureRecognizer]
__DELETE_org_xmlvm_ios_UIGestureRecognizer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer___INIT___]
    UILongPressGestureRecognizer* var0 = [[UILongPressGestureRecognizer alloc ] init];
    org_xmlvm_ios_UILongPressGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer___INIT____java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer___INIT___]
    UILongPressGestureRecognizer* var0 = [[UILongPressGestureRecognizer alloc ] init];
    org_xmlvm_ios_UILongPressGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer___INIT___]

    UILongPressGestureRecognizer* var0 = [[UILongPressGestureRecognizer alloc]init];

    org_xmlvm_ios_UILongPressGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_getNumberOfTapsRequired__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfTapsRequired];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_setNumberOfTapsRequired___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfTapsRequired:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_getNumberOfTouchesRequired__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfTouchesRequired];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_setNumberOfTouchesRequired___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfTouchesRequired:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_getMinimumPressDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz minimumPressDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_setMinimumPressDuration___double]

    XMLVM_VAR_THIZ;
    [thiz setMinimumPressDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_getAllowableMovement__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz allowableMovement];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILongPressGestureRecognizer_setAllowableMovement___float]

    XMLVM_VAR_THIZ;
    [thiz setAllowableMovement:n1];

    
//XMLVM_END_WRAPPER
