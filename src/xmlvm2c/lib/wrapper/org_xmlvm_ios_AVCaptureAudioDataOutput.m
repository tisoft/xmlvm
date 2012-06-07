
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureAudioDataOutput (AVCaptureAudioDataOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureAudioDataOutput (AVCaptureAudioDataOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureAudioDataOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureAudioDataOutput();
}
@end

void org_xmlvm_ios_AVCaptureAudioDataOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureAudioDataOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureAudioDataOutput();
        org_xmlvm_ios_AVCaptureAudioDataOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureAudioDataOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureAudioDataOutput]
__DELETE_org_xmlvm_ios_AVCaptureOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioDataOutput___INIT___]
    AVCaptureAudioDataOutput* var0 = [[AVCaptureAudioDataOutput alloc ] init];
    org_xmlvm_ios_AVCaptureAudioDataOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioDataOutput___INIT___]
    AVCaptureAudioDataOutput* var0 = [[AVCaptureAudioDataOutput alloc ] init];
    org_xmlvm_ios_AVCaptureAudioDataOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioDataOutput___INIT___]

    AVCaptureAudioDataOutput* var0 = [[AVCaptureAudioDataOutput alloc]init];

    org_xmlvm_ios_AVCaptureAudioDataOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioDataOutput_setSampleBufferDelegate___org_xmlvm_ios_AVCaptureAudioDataOutputSampleBufferDelegate_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioDataOutput_getSampleBufferDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioDataOutput_getSampleBufferCallbackQueue__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz sampleBufferCallbackQueue];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
