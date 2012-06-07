
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPrintPageRenderer (UIPrintPageRendererWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPrintPageRenderer (UIPrintPageRendererWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPrintPageRenderer.classInitialized)
        __INIT_org_xmlvm_ios_UIPrintPageRenderer();
}
@end

void org_xmlvm_ios_UIPrintPageRenderer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPrintPageRenderer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPrintPageRenderer();
        org_xmlvm_ios_UIPrintPageRenderer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPrintPageRenderer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPrintPageRenderer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer___INIT___]
    UIPrintPageRenderer* var0 = [[UIPrintPageRenderer alloc ] init];
    org_xmlvm_ios_UIPrintPageRenderer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer___INIT___]

    UIPrintPageRenderer* var0 = [[UIPrintPageRenderer alloc]init];

    org_xmlvm_ios_UIPrintPageRenderer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_getHeaderHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz headerHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_setHeaderHeight___float]

    XMLVM_VAR_THIZ;
    [thiz setHeaderHeight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_getFooterHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz footerHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_setFooterHeight___float]

    XMLVM_VAR_THIZ;
    [thiz setFooterHeight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_getPaperRect__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz paperRect];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_getPrintableRect__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz printableRect];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_getPrintFormatters__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz printFormatters];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_setPrintFormatters___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setPrintFormatters:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_printFormattersForPageAtIndex___int]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  printFormattersForPageAtIndex:n1];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_addPrintFormatter___org_xmlvm_ios_UIPrintFormatter_int]

    XMLVM_VAR_THIZ;
    [thiz  addPrintFormatter:(UIPrintFormatter*) (((org_xmlvm_ios_UIPrintFormatter*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) startingAtPageAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_numberOfPages__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz numberOfPages];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_prepareForDrawingPages___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  prepareForDrawingPages:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_drawPageAtIndex___int_org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawPageAtIndex:n1 inRect:toCGRect(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_drawPrintFormatter___org_xmlvm_ios_UIPrintFormatter_int]

    XMLVM_VAR_THIZ;
    [thiz  drawPrintFormatter:(UIPrintFormatter*) (((org_xmlvm_ios_UIPrintFormatter*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forPageAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_drawHeaderForPageAtIndex___int_org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawHeaderForPageAtIndex:n1 inRect:toCGRect(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_drawContentForPageAtIndex___int_org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawContentForPageAtIndex:n1 inRect:toCGRect(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintPageRenderer_drawFooterForPageAtIndex___int_org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawFooterForPageAtIndex:n1 inRect:toCGRect(n2)];

    
//XMLVM_END_WRAPPER
