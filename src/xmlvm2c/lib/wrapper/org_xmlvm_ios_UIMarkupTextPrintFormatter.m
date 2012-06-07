
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIMarkupTextPrintFormatter (UIMarkupTextPrintFormatterWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIMarkupTextPrintFormatter (UIMarkupTextPrintFormatterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIMarkupTextPrintFormatter.classInitialized)
        __INIT_org_xmlvm_ios_UIMarkupTextPrintFormatter();
}
@end

void org_xmlvm_ios_UIMarkupTextPrintFormatter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIPrintFormatter_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIMarkupTextPrintFormatter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIMarkupTextPrintFormatter();
        org_xmlvm_ios_UIMarkupTextPrintFormatter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIMarkupTextPrintFormatter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIMarkupTextPrintFormatter]
__DELETE_org_xmlvm_ios_UIPrintFormatter(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMarkupTextPrintFormatter___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    UIMarkupTextPrintFormatter* var0 = [[UIMarkupTextPrintFormatter alloc] initWithMarkupText:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_UIMarkupTextPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMarkupTextPrintFormatter___INIT___]
    UIMarkupTextPrintFormatter* var0 = [[UIMarkupTextPrintFormatter alloc ] init];
    org_xmlvm_ios_UIMarkupTextPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMarkupTextPrintFormatter___INIT___]
    UIMarkupTextPrintFormatter* var0 = [[UIMarkupTextPrintFormatter alloc ] init];
    org_xmlvm_ios_UIMarkupTextPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMarkupTextPrintFormatter___INIT___]

    UIMarkupTextPrintFormatter* var0 = [[UIMarkupTextPrintFormatter alloc]init];

    org_xmlvm_ios_UIMarkupTextPrintFormatter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMarkupTextPrintFormatter_getMarkupText__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz markupText];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIMarkupTextPrintFormatter_setMarkupText___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setMarkupText:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
