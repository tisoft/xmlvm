
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIProgressView (UIProgressViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIProgressView (UIProgressViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIProgressView.classInitialized)
        __INIT_org_xmlvm_ios_UIProgressView();
}
@end

void org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIProgressView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIProgressView();
        org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIProgressView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIProgressView]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView___INIT____int]

    UIProgressView* var0 = [[UIProgressView alloc] initWithProgressViewStyle:n1];
    org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView___INIT___]
    UIProgressView* var0 = [[UIProgressView alloc ] init];
    org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView___INIT____org_xmlvm_ios_CGRect]

    UIProgressView* var0 = [[UIProgressView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView___INIT___]
    UIProgressView* var0 = [[UIProgressView alloc ] init];
    org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView___INIT___]
    UIProgressView* var0 = [[UIProgressView alloc ] init];
    org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView___INIT___]

    UIProgressView* var0 = [[UIProgressView alloc]init];

    org_xmlvm_ios_UIProgressView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView_getProgressViewStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz progressViewStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView_setProgressViewStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setProgressViewStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView_getProgress__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz progress];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIProgressView_setProgress___float]

    XMLVM_VAR_THIZ;
    [thiz setProgress:n1];

    
//XMLVM_END_WRAPPER
