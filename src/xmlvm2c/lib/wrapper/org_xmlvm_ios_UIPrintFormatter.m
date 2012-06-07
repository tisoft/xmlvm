
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPrintFormatter (UIPrintFormatterWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPrintFormatter (UIPrintFormatterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPrintFormatter.classInitialized)
        __INIT_org_xmlvm_ios_UIPrintFormatter();
}
@end

void org_xmlvm_ios_UIPrintFormatter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPrintFormatter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPrintFormatter();
        org_xmlvm_ios_UIPrintFormatter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPrintFormatter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPrintFormatter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter___INIT___]
    UIPrintFormatter* var0 = [[UIPrintFormatter alloc ] init];
    org_xmlvm_ios_UIPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter___INIT___]

    UIPrintFormatter* var0 = [[UIPrintFormatter alloc]init];

    org_xmlvm_ios_UIPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_getPrintPageRenderer__]

    XMLVM_VAR_THIZ;
    UIPrintPageRenderer* var0 = [thiz printPageRenderer];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_removeFromPrintPageRenderer__]

    XMLVM_VAR_THIZ;
    [thiz removeFromPrintPageRenderer];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_getMaximumContentHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz maximumContentHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_setMaximumContentHeight___float]

    XMLVM_VAR_THIZ;
    [thiz setMaximumContentHeight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_getMaximumContentWidth__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz maximumContentWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_setMaximumContentWidth___float]

    XMLVM_VAR_THIZ;
    [thiz setMaximumContentWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_getContentInsets__]

    XMLVM_VAR_THIZ;
    UIEdgeInsets var0 = [thiz contentInsets];
    
    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_setContentInsets___org_xmlvm_ios_UIEdgeInsets]

    XMLVM_VAR_THIZ;
    [thiz setContentInsets:toUIEdgeInsets(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_getStartPage__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz startPage];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_setStartPage___int]

    XMLVM_VAR_THIZ;
    [thiz setStartPage:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_getPageCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz pageCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_rectForPageAtIndex___int]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rectForPageAtIndex:n1];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintFormatter_drawInRect___org_xmlvm_ios_CGRect_int]

    XMLVM_VAR_THIZ;
    [thiz  drawInRect:toCGRect(n1) forPageAtIndex:n2];

    
//XMLVM_END_WRAPPER
