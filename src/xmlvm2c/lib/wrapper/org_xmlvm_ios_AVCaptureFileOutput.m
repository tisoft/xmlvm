
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureFileOutput (AVCaptureFileOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureFileOutput (AVCaptureFileOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureFileOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureFileOutput();
}
@end

void org_xmlvm_ios_AVCaptureFileOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureFileOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureFileOutput();
        org_xmlvm_ios_AVCaptureFileOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureFileOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureFileOutput]
__DELETE_org_xmlvm_ios_AVCaptureOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput___INIT___]
    AVCaptureFileOutput* var0 = [[AVCaptureFileOutput alloc ] init];
    org_xmlvm_ios_AVCaptureFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput___INIT___]
    AVCaptureFileOutput* var0 = [[AVCaptureFileOutput alloc ] init];
    org_xmlvm_ios_AVCaptureFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput___INIT___]

    AVCaptureFileOutput* var0 = [[AVCaptureFileOutput alloc]init];

    org_xmlvm_ios_AVCaptureFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_getOutputFileURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz outputFileURL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_startRecordingToOutputFileURL___org_xmlvm_ios_NSURL_org_xmlvm_ios_AVCaptureFileOutputRecordingDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_stopRecording__]

    XMLVM_VAR_THIZ;
    [thiz stopRecording];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_isRecording__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isRecording];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_getRecordedDuration__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz recordedDuration];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_getRecordedFileSize__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz recordedFileSize];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_getMaxRecordedDuration__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz maxRecordedDuration];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_setMaxRecordedDuration___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setMaxRecordedDuration:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_getMaxRecordedFileSize__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz maxRecordedFileSize];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_setMaxRecordedFileSize___long]

    XMLVM_VAR_THIZ;
    [thiz setMaxRecordedFileSize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_getMinFreeDiskSpaceLimit__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz minFreeDiskSpaceLimit];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureFileOutput_setMinFreeDiskSpaceLimit___long]

    XMLVM_VAR_THIZ;
    [thiz setMinFreeDiskSpaceLimit:n1];

    
//XMLVM_END_WRAPPER
