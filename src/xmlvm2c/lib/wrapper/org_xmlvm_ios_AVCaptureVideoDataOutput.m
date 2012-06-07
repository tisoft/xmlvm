
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureVideoDataOutput (AVCaptureVideoDataOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureVideoDataOutput (AVCaptureVideoDataOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureVideoDataOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureVideoDataOutput();
}
@end

void org_xmlvm_ios_AVCaptureVideoDataOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureVideoDataOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureVideoDataOutput();
        org_xmlvm_ios_AVCaptureVideoDataOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureVideoDataOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureVideoDataOutput]
__DELETE_org_xmlvm_ios_AVCaptureOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput___INIT___]
    AVCaptureVideoDataOutput* var0 = [[AVCaptureVideoDataOutput alloc ] init];
    org_xmlvm_ios_AVCaptureVideoDataOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput___INIT___]
    AVCaptureVideoDataOutput* var0 = [[AVCaptureVideoDataOutput alloc ] init];
    org_xmlvm_ios_AVCaptureVideoDataOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput___INIT___]

    AVCaptureVideoDataOutput* var0 = [[AVCaptureVideoDataOutput alloc]init];

    org_xmlvm_ios_AVCaptureVideoDataOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_setSampleBufferDelegate___org_xmlvm_ios_AVCaptureVideoDataOutputSampleBufferDelegate_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_getSampleBufferDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_getSampleBufferCallbackQueue__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz sampleBufferCallbackQueue];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_getVideoSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_setVideoSettings___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_getMinFrameDuration__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz minFrameDuration];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_setMinFrameDuration___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setMinFrameDuration:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_getAlwaysDiscardsLateVideoFrames__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz alwaysDiscardsLateVideoFrames];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureVideoDataOutput_setAlwaysDiscardsLateVideoFrames___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAlwaysDiscardsLateVideoFrames:n1];

    
//XMLVM_END_WRAPPER
