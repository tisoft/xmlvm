
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureStillImageOutput (AVCaptureStillImageOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureStillImageOutput (AVCaptureStillImageOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureStillImageOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureStillImageOutput();
}
@end

void org_xmlvm_ios_AVCaptureStillImageOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureStillImageOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureStillImageOutput();
        org_xmlvm_ios_AVCaptureStillImageOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureStillImageOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureStillImageOutput]
__DELETE_org_xmlvm_ios_AVCaptureOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput___INIT___]
    AVCaptureStillImageOutput* var0 = [[AVCaptureStillImageOutput alloc ] init];
    org_xmlvm_ios_AVCaptureStillImageOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput___INIT___]
    AVCaptureStillImageOutput* var0 = [[AVCaptureStillImageOutput alloc ] init];
    org_xmlvm_ios_AVCaptureStillImageOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput___INIT___]

    AVCaptureStillImageOutput* var0 = [[AVCaptureStillImageOutput alloc]init];

    org_xmlvm_ios_AVCaptureStillImageOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput_getOutputSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput_setOutputSettings___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput_getAvailableImageDataCVPixelFormatTypes__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz availableImageDataCVPixelFormatTypes];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput_getAvailableImageDataCodecTypes__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz availableImageDataCodecTypes];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput_captureStillImageAsynchronouslyFromConnection___org_xmlvm_ios_AVCaptureConnection_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  captureStillImageAsynchronouslyFromConnection:(AVCaptureConnection*) (((org_xmlvm_ios_AVCaptureConnection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) completionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureStillImageOutput_jpegStillImageNSDataRepresentation___org_xmlvm_ios_CMSampleBuffer]

    NSData* var0 =  [AVCaptureStillImageOutput  jpegStillImageNSDataRepresentation:(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
