
//XMLVM_BEGIN_IMPLEMENTATION
@interface CVImageBuffer (CVImageBufferWrapperCategory)
+ (void) initialize_class;
@end

@implementation CVImageBuffer (CVImageBufferWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CVImageBuffer.classInitialized)
        __INIT_org_xmlvm_ios_CVImageBuffer();
}
@end

void org_xmlvm_ios_CVImageBuffer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CVBuffer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CVImageBuffer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CVImageBuffer();
        org_xmlvm_ios_CVImageBuffer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CVImageBuffer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CVImageBuffer]
__DELETE_org_xmlvm_ios_CVBuffer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVImageBuffer___INIT___]
    CVImageBuffer* var0 = [[CVImageBuffer alloc ] init];
    org_xmlvm_ios_CVImageBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVImageBuffer___INIT___]
    CVImageBuffer* var0 = [[CVImageBuffer alloc ] init];
    org_xmlvm_ios_CVImageBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVImageBuffer_getEncodedSize__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVImageBuffer_getDisplaySize__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVImageBuffer_getCleanRect__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVImageBuffer_getColorSpace__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
