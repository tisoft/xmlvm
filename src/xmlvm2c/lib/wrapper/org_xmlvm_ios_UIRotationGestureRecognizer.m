
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIRotationGestureRecognizer (UIRotationGestureRecognizerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIRotationGestureRecognizer (UIRotationGestureRecognizerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIRotationGestureRecognizer.classInitialized)
        __INIT_org_xmlvm_ios_UIRotationGestureRecognizer();
}
@end

void org_xmlvm_ios_UIRotationGestureRecognizer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIGestureRecognizer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIRotationGestureRecognizer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIRotationGestureRecognizer();
        org_xmlvm_ios_UIRotationGestureRecognizer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIRotationGestureRecognizer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIRotationGestureRecognizer]
__DELETE_org_xmlvm_ios_UIGestureRecognizer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer___INIT___]
    UIRotationGestureRecognizer* var0 = [[UIRotationGestureRecognizer alloc ] init];
    org_xmlvm_ios_UIRotationGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer___INIT____java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer___INIT___]
    UIRotationGestureRecognizer* var0 = [[UIRotationGestureRecognizer alloc ] init];
    org_xmlvm_ios_UIRotationGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer___INIT___]

    UIRotationGestureRecognizer* var0 = [[UIRotationGestureRecognizer alloc]init];

    org_xmlvm_ios_UIRotationGestureRecognizer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer_getRotation__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz rotation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer_setRotation___float]

    XMLVM_VAR_THIZ;
    [thiz setRotation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIRotationGestureRecognizer_getVelocity__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz velocity];
    
    return var0;
//XMLVM_END_WRAPPER
