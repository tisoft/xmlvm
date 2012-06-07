
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAudioMixInputParameters (AVAudioMixInputParametersWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAudioMixInputParameters (AVAudioMixInputParametersWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAudioMixInputParameters.classInitialized)
        __INIT_org_xmlvm_ios_AVAudioMixInputParameters();
}
@end

void org_xmlvm_ios_AVAudioMixInputParameters_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAudioMixInputParameters class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAudioMixInputParameters();
        org_xmlvm_ios_AVAudioMixInputParameters_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAudioMixInputParameters]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAudioMixInputParameters]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMixInputParameters___INIT___]
    AVAudioMixInputParameters* var0 = [[AVAudioMixInputParameters alloc ] init];
    org_xmlvm_ios_AVAudioMixInputParameters_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMixInputParameters___INIT___]

    AVAudioMixInputParameters* var0 = [[AVAudioMixInputParameters alloc]init];

    org_xmlvm_ios_AVAudioMixInputParameters_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMixInputParameters_getTrackID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz trackID];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMixInputParameters_getVolumeRampForTime___org_xmlvm_ios_CMTime_float_1ARRAY_float_1ARRAY_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CMTimeRange var4= toCMTimeRange(jObject4);
    
    BOOL var0 = [thiz  getVolumeRampForTime:toCMTime(n1) startVolume:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ endVolume:a3->fields.org_xmlvm_runtime_XMLVMArray.array_ timeRange:&var4];

    return var0;
//XMLVM_END_WRAPPER
