
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureAudioChannel (AVCaptureAudioChannelWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureAudioChannel (AVCaptureAudioChannelWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureAudioChannel.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureAudioChannel();
}
@end

void org_xmlvm_ios_AVCaptureAudioChannel_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureAudioChannel class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureAudioChannel();
        org_xmlvm_ios_AVCaptureAudioChannel_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureAudioChannel]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureAudioChannel]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioChannel___INIT___]
    AVCaptureAudioChannel* var0 = [[AVCaptureAudioChannel alloc ] init];
    org_xmlvm_ios_AVCaptureAudioChannel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioChannel___INIT___]

    AVCaptureAudioChannel* var0 = [[AVCaptureAudioChannel alloc]init];

    org_xmlvm_ios_AVCaptureAudioChannel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioChannel_getAveragePowerLevel__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz averagePowerLevel];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureAudioChannel_getPeakHoldLevel__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz peakHoldLevel];
    
    return var0;
//XMLVM_END_WRAPPER
