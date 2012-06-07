
//XMLVM_BEGIN_IMPLEMENTATION
@interface CGPDFString (CGPDFStringWrapperCategory)
+ (void) initialize_class;
@end

@implementation CGPDFString (CGPDFStringWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CGPDFString.classInitialized)
        __INIT_org_xmlvm_ios_CGPDFString();
}
@end

void org_xmlvm_ios_CGPDFString_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CGPDFString class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CGPDFString();
        org_xmlvm_ios_CGPDFString_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CGPDFString]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPDFString]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFString___INIT___]
    CGPDFString* var0 = [[CGPDFString alloc ] init];
    org_xmlvm_ios_CGPDFString_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFString_getLength__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFString_getBytePtr__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFString_copyTextString__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFString_copyDate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
