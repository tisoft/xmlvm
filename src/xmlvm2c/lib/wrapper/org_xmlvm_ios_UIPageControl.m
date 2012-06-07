
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPageControl (UIPageControlWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPageControl (UIPageControlWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPageControl.classInitialized)
        __INIT_org_xmlvm_ios_UIPageControl();
}
@end

void org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPageControl class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPageControl();
        org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPageControl]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPageControl]
__DELETE_org_xmlvm_ios_UIControl(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl___INIT___]
    UIPageControl* var0 = [[UIPageControl alloc ] init];
    org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl___INIT___]
    UIPageControl* var0 = [[UIPageControl alloc ] init];
    org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl___INIT____org_xmlvm_ios_CGRect]

    UIPageControl* var0 = [[UIPageControl alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl___INIT___]
    UIPageControl* var0 = [[UIPageControl alloc ] init];
    org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl___INIT___]
    UIPageControl* var0 = [[UIPageControl alloc ] init];
    org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl___INIT___]

    UIPageControl* var0 = [[UIPageControl alloc]init];

    org_xmlvm_ios_UIPageControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_getNumberOfPages__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfPages];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_setNumberOfPages___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfPages:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_getCurrentPage__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz currentPage];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_setCurrentPage___int]

    XMLVM_VAR_THIZ;
    [thiz setCurrentPage:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_getHidesForSinglePage__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz hidesForSinglePage];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_setHidesForSinglePage___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHidesForSinglePage:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_getDefersCurrentPageDisplay__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz defersCurrentPageDisplay];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_setDefersCurrentPageDisplay___boolean]

    XMLVM_VAR_THIZ;
    [thiz setDefersCurrentPageDisplay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_updateCurrentPageDisplay__]

    XMLVM_VAR_THIZ;
    [thiz updateCurrentPageDisplay];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPageControl_sizeForNumberOfPages___int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  sizeForNumberOfPages:n1];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER
