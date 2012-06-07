
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIScreenMode (UIScreenModeWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIScreenMode (UIScreenModeWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIScreenMode.classInitialized)
        __INIT_org_xmlvm_ios_UIScreenMode();
}
@end

void org_xmlvm_ios_UIScreenMode_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIScreenMode class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIScreenMode();
        org_xmlvm_ios_UIScreenMode_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIScreenMode]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIScreenMode]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIScreenMode___INIT___]
    UIScreenMode* var0 = [[UIScreenMode alloc ] init];
    org_xmlvm_ios_UIScreenMode_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIScreenMode___INIT___]

    UIScreenMode* var0 = [[UIScreenMode alloc]init];

    org_xmlvm_ios_UIScreenMode_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIScreenMode_getSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz size];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIScreenMode_getPixelAspectRatio__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz pixelAspectRatio];
    
    return var0;
//XMLVM_END_WRAPPER
