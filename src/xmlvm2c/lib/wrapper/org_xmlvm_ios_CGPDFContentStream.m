
//XMLVM_BEGIN_IMPLEMENTATION
@interface CGPDFContentStream (CGPDFContentStreamWrapperCategory)
+ (void) initialize_class;
@end

@implementation CGPDFContentStream (CGPDFContentStreamWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CGPDFContentStream.classInitialized)
        __INIT_org_xmlvm_ios_CGPDFContentStream();
}
@end

void org_xmlvm_ios_CGPDFContentStream_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CGPDFContentStream class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CGPDFContentStream();
        org_xmlvm_ios_CGPDFContentStream_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CGPDFContentStream]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPDFContentStream]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream___INIT___]
    CGPDFContentStream* var0 = [[CGPDFContentStream alloc ] init];
    org_xmlvm_ios_CGPDFContentStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream_createWithPage___org_xmlvm_ios_CGPDFPage]
XMLVM_VAR_IOS_REF(CGPDFPage, var1, n1);
    
    CGPDFContentStream* var0 = CGPDFContentStreamCreateWithPage(var1);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream_createWithStream___org_xmlvm_ios_CGPDFStream_org_xmlvm_ios_CGPDFDictionary_org_xmlvm_ios_CGPDFContentStream]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream_retain__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream_release__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream_getStreams__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFContentStream_getResource___byte_1ARRAY_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
