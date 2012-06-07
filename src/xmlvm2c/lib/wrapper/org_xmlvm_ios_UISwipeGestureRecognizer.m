
//XMLVM_BEGIN_IMPLEMENTATION
@interface UISwipeGestureRecognizer (UISwipeGestureRecognizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UISwipeGestureRecognizer (UISwipeGestureRecognizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UISwipeGestureRecognizer.classInitialized)
        __INIT_org_xmlvm_ios_UISwipeGestureRecognizer();
}
@end

void org_xmlvm_ios_UISwipeGestureRecognizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIGestureRecognizer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UISwipeGestureRecognizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UISwipeGestureRecognizer();
        org_xmlvm_ios_UISwipeGestureRecognizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UISwipeGestureRecognizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UISwipeGestureRecognizer]
__DELETE_org_xmlvm_ios_UIGestureRecognizer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer___INIT___]
    UISwipeGestureRecognizer* var0 = [[UISwipeGestureRecognizer alloc ] init];
    org_xmlvm_ios_UISwipeGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer___INIT____java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer___INIT___]
    UISwipeGestureRecognizer* var0 = [[UISwipeGestureRecognizer alloc ] init];
    org_xmlvm_ios_UISwipeGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer___INIT___]

    UISwipeGestureRecognizer* var0 = [[UISwipeGestureRecognizer alloc]init];

    org_xmlvm_ios_UISwipeGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer_getNumberOfTouchesRequired__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfTouchesRequired];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer_setNumberOfTouchesRequired___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfTouchesRequired:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer_getDirection__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz direction];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwipeGestureRecognizer_setDirection___int]

    XMLVM_VAR_THIZ;
    [thiz setDirection:n1];

    
//XMLVM_END_WRAPPER
