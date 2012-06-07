
//XMLVM_BEGIN_IMPLEMENTATION
@interface CGPDFStream (CGPDFStreamWrapperCategory)
+ (void) initialize_class;
@end

@implementation CGPDFStream (CGPDFStreamWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CGPDFStream.classInitialized)
        __INIT_org_xmlvm_ios_CGPDFStream();
}
@end

void org_xmlvm_ios_CGPDFStream_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CGPDFStream class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CGPDFStream();
        org_xmlvm_ios_CGPDFStream_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CGPDFStream]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPDFStream]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFStream___INIT___]
    CGPDFStream* var0 = [[CGPDFStream alloc ] init];
    org_xmlvm_ios_CGPDFStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFStream_getDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFStream_copyData___int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
