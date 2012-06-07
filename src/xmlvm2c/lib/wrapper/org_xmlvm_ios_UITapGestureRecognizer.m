
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITapGestureRecognizer (UITapGestureRecognizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITapGestureRecognizer (UITapGestureRecognizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITapGestureRecognizer.classInitialized)
        __INIT_org_xmlvm_ios_UITapGestureRecognizer();
}
@end

void org_xmlvm_ios_UITapGestureRecognizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIGestureRecognizer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITapGestureRecognizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITapGestureRecognizer();
        org_xmlvm_ios_UITapGestureRecognizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITapGestureRecognizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITapGestureRecognizer]
__DELETE_org_xmlvm_ios_UIGestureRecognizer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer___INIT___]
    UITapGestureRecognizer* var0 = [[UITapGestureRecognizer alloc ] init];
    org_xmlvm_ios_UITapGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer___INIT____java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer___INIT___]
    UITapGestureRecognizer* var0 = [[UITapGestureRecognizer alloc ] init];
    org_xmlvm_ios_UITapGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer___INIT___]

    UITapGestureRecognizer* var0 = [[UITapGestureRecognizer alloc]init];

    org_xmlvm_ios_UITapGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer_getNumberOfTapsRequired__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfTapsRequired];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer_setNumberOfTapsRequired___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfTapsRequired:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer_getNumberOfTouchesRequired__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfTouchesRequired];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITapGestureRecognizer_setNumberOfTouchesRequired___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfTouchesRequired:n1];

    
//XMLVM_END_WRAPPER
