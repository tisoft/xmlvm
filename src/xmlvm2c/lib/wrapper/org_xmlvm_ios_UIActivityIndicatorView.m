
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIActivityIndicatorView (UIActivityIndicatorViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIActivityIndicatorView (UIActivityIndicatorViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIActivityIndicatorView.classInitialized)
        __INIT_org_xmlvm_ios_UIActivityIndicatorView();
}
@end

void org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIActivityIndicatorView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIActivityIndicatorView();
        org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIActivityIndicatorView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIActivityIndicatorView]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView___INIT____int]

    UIActivityIndicatorView* var0 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:n1];
    org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView___INIT___]
    UIActivityIndicatorView* var0 = [[UIActivityIndicatorView alloc ] init];
    org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView___INIT____org_xmlvm_ios_CGRect]

    UIActivityIndicatorView* var0 = [[UIActivityIndicatorView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView___INIT___]
    UIActivityIndicatorView* var0 = [[UIActivityIndicatorView alloc ] init];
    org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView___INIT___]
    UIActivityIndicatorView* var0 = [[UIActivityIndicatorView alloc ] init];
    org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView___INIT___]

    UIActivityIndicatorView* var0 = [[UIActivityIndicatorView alloc]init];

    org_xmlvm_ios_UIActivityIndicatorView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_getActivityIndicatorViewStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz activityIndicatorViewStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_setActivityIndicatorViewStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setActivityIndicatorViewStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_getHidesWhenStopped__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz hidesWhenStopped];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_setHidesWhenStopped___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHidesWhenStopped:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_startAnimating__]

    XMLVM_VAR_THIZ;
    [thiz startAnimating];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_stopAnimating__]

    XMLVM_VAR_THIZ;
    [thiz stopAnimating];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActivityIndicatorView_isAnimating__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isAnimating];

    return var0;
//XMLVM_END_WRAPPER
