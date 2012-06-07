
//XMLVM_BEGIN_IMPLEMENTATION
@interface CABasicAnimation (CABasicAnimationWrapperCategory)
+ (void) initialize_class;
@end

@implementation CABasicAnimation (CABasicAnimationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CABasicAnimation.classInitialized)
        __INIT_org_xmlvm_ios_CABasicAnimation();
}
@end

void org_xmlvm_ios_CABasicAnimation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CABasicAnimation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CABasicAnimation();
        org_xmlvm_ios_CABasicAnimation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CABasicAnimation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CABasicAnimation]
__DELETE_org_xmlvm_ios_CAPropertyAnimation(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation___INIT___]
    CABasicAnimation* var0 = [[CABasicAnimation alloc ] init];
    org_xmlvm_ios_CABasicAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation___INIT___]
    CABasicAnimation* var0 = [[CABasicAnimation alloc ] init];
    org_xmlvm_ios_CABasicAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation___INIT___]
    CABasicAnimation* var0 = [[CABasicAnimation alloc ] init];
    org_xmlvm_ios_CABasicAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation___INIT___]

    CABasicAnimation* var0 = [[CABasicAnimation alloc]init];

    org_xmlvm_ios_CABasicAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation_getByValue__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz byValue];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation_setByValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setByValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation_getToValue__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz toValue];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation_setToValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setToValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation_getFromValue__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz fromValue];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CABasicAnimation_setFromValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setFromValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
