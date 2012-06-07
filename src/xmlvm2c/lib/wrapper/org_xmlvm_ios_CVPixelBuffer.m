
//XMLVM_BEGIN_IMPLEMENTATION
@interface CVPixelBuffer (CVPixelBufferWrapperCategory)
+ (void) initialize_class;
@end

@implementation CVPixelBuffer (CVPixelBufferWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CVPixelBuffer.classInitialized)
        __INIT_org_xmlvm_ios_CVPixelBuffer();
}
@end

void org_xmlvm_ios_CVPixelBuffer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CVImageBuffer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CVPixelBuffer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CVPixelBuffer();
        org_xmlvm_ios_CVPixelBuffer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CVPixelBuffer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CVPixelBuffer]
__DELETE_org_xmlvm_ios_CVImageBuffer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer___INIT____org_xmlvm_ios_CFAllocator_int_int_int_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CVPixelBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CVPixelBuffer* var0 = [[CVPixelBuffer alloc] create:var1];
    org_xmlvm_ios_CVPixelBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer___INIT___]
    CVPixelBuffer* var0 = [[CVPixelBuffer alloc ] init];
    org_xmlvm_ios_CVPixelBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer___INIT___]
    CVPixelBuffer* var0 = [[CVPixelBuffer alloc ] init];
    org_xmlvm_ios_CVPixelBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer___INIT___]
    CVPixelBuffer* var0 = [[CVPixelBuffer alloc ] init];
    org_xmlvm_ios_CVPixelBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_retain__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_release__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_createResolvedAttributesDictionary___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFArray_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_createWithBytes___org_xmlvm_ios_CFAllocator_int_int_int_byte_1ARRAY_int_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CVPixelBuffer]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_createWithPlanarBytes___org_xmlvm_ios_CFAllocator_int_int_int_byte_1ARRAY_int_int_byte_2ARRAY_int_1ARRAY_int_1ARRAY_int_1ARRAY_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CVPixelBuffer]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_lockBaseAddress___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_unlockBaseAddress___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getWidth__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getHeight__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getPixelFormatType__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getBaseAddress__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getBytesPerRow__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getDataSize__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_isPlanar__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getPlaneCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getWidthOfPlane___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getHeightOfPlane___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getBaseAddressOfPlane___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getBytesPerRowOfPlane___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_getExtendedPixels___int_1ARRAY_int_1ARRAY_int_1ARRAY_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPixelBuffer_fillExtendedPixels__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
