
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMSampleBuffer (CMSampleBufferWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMSampleBuffer (CMSampleBufferWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMSampleBuffer.classInitialized)
        __INIT_org_xmlvm_ios_CMSampleBuffer();
}
@end

void org_xmlvm_ios_CMSampleBuffer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMSampleBuffer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMSampleBuffer();
        org_xmlvm_ios_CMSampleBuffer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMSampleBuffer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMSampleBuffer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer___INIT____org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CMBlockBuffer_byte_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CMFormatDescription_long_long_org_xmlvm_ios_Reference_long_int_1ARRAY_org_xmlvm_ios_CMSampleBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    JAVA_OBJECT jObject9 = org_xmlvm_ios_Reference_get__(n9);
    CMSampleTimingInfo var9= toCMSampleTimingInfo(jObject9);
    XMLVM_VAR_INT_ARRAY(a11, n11); 
    
    CMSampleBuffer* var0 = [[CMSampleBuffer alloc] create:var1];
    org_xmlvm_ios_CMSampleBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer___INIT___]
    CMSampleBuffer* var0 = [[CMSampleBuffer alloc ] init];
    org_xmlvm_ios_CMSampleBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_createForImageBuffer___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CVImageBuffer_byte_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CMVideoFormatDescription_org_xmlvm_ios_Reference_org_xmlvm_ios_CMSampleBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    JAVA_OBJECT jObject7 = org_xmlvm_ios_Reference_get__(n7);
    CMSampleTimingInfo var7= toCMSampleTimingInfo(jObject7);
    
    int var0 = CMVideoFormatDescriptionCreateForImageBuffer(var1,(CVImageBuffer*) (((org_xmlvm_ios_CVImageBuffer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,(CMVideoFormatDescription*) (((org_xmlvm_ios_CMVideoFormatDescription*) n6)->fields.org_xmlvm_ios_NSObject.wrappedObj),&var7,(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n8)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n7, fromCMSampleTimingInfo(var7));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CMSampleBuffer_org_xmlvm_ios_CMSampleBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    int var0 = CFHostCreateCopy(var1,(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_createCopyWithNewTiming___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CMSampleBuffer_long_org_xmlvm_ios_Reference_org_xmlvm_ios_CMSampleBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CMSampleTimingInfo var4= toCMSampleTimingInfo(jObject4);
    
    int var0 = CMSampleBufferCreateCopyWithNewTiming(var1,(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,&var4,(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCMSampleTimingInfo(var4));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_copySampleBufferForRange___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CMSampleBuffer_org_xmlvm_ios_CFRange_org_xmlvm_ios_CMSampleBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    int var0 = CMSampleBufferCopySampleBufferForRange(var1,(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),toCFRange(n3),(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_setDataBuffer___org_xmlvm_ios_CMBlockBuffer]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getDataBuffer__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getImageBuffer__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_setDataBufferFromAudioBufferList___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFAllocator_int_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getAudioBufferListWithRetainedBlockBuffer___int_1ARRAY_org_xmlvm_ios_Reference_int_org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFAllocator_int_org_xmlvm_ios_CMBlockBuffer]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getAudioStreamPacketDescriptions___int_org_xmlvm_ios_Reference_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getAudioStreamPacketDescriptionsPtr___org_xmlvm_ios_Reference<AudioStreamPacketDescription>[]_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_setDataReady__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_dataIsReady__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_makeDataReady__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_trackDataReadiness___org_xmlvm_ios_CMSampleBuffer]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_invalidate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_setInvalidateCallback___java_lang_Object_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_isValid__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getNumSamples__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getDuration__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getPresentationTimeStamp__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getDecodeTimeStamp__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getOutputDuration__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getOutputPresentationTimeStamp__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_setOutputPresentationTimeStamp___org_xmlvm_ios_CMTime]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getOutputDecodeTimeStamp__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getSampleTimingInfoArray___long_org_xmlvm_ios_Reference_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getOutputSampleTimingInfoArray___long_org_xmlvm_ios_Reference_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getSampleTimingInfo___long_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getSampleSizeArray___long_int_1ARRAY_long_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getSampleSize___long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getTotalSampleSize__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getFormatDescription__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_getSampleAttachmentsArray___byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSampleBuffer_callForEachSample___java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
