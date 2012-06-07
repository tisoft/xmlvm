
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIViewPrintFormatter (UIViewPrintFormatterWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIViewPrintFormatter (UIViewPrintFormatterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIViewPrintFormatter.classInitialized)
        __INIT_org_xmlvm_ios_UIViewPrintFormatter();
}
@end

void org_xmlvm_ios_UIViewPrintFormatter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIPrintFormatter_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIViewPrintFormatter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIViewPrintFormatter();
        org_xmlvm_ios_UIViewPrintFormatter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIViewPrintFormatter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIViewPrintFormatter]
__DELETE_org_xmlvm_ios_UIPrintFormatter(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewPrintFormatter___INIT___]
    UIViewPrintFormatter* var0 = [[UIViewPrintFormatter alloc ] init];
    org_xmlvm_ios_UIViewPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewPrintFormatter___INIT___]
    UIViewPrintFormatter* var0 = [[UIViewPrintFormatter alloc ] init];
    org_xmlvm_ios_UIViewPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewPrintFormatter___INIT___]

    UIViewPrintFormatter* var0 = [[UIViewPrintFormatter alloc]init];

    org_xmlvm_ios_UIViewPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIViewPrintFormatter_getView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz view];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
