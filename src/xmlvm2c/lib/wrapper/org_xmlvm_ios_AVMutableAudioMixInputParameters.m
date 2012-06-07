
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableAudioMixInputParameters (AVMutableAudioMixInputParametersWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableAudioMixInputParameters (AVMutableAudioMixInputParametersWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableAudioMixInputParameters.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableAudioMixInputParameters();
}
@end

void org_xmlvm_ios_AVMutableAudioMixInputParameters_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAudioMixInputParameters_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableAudioMixInputParameters class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableAudioMixInputParameters();
        org_xmlvm_ios_AVMutableAudioMixInputParameters_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableAudioMixInputParameters]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableAudioMixInputParameters]
__DELETE_org_xmlvm_ios_AVAudioMixInputParameters(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters___INIT___]
    AVMutableAudioMixInputParameters* var0 = [[AVMutableAudioMixInputParameters alloc ] init];
    org_xmlvm_ios_AVMutableAudioMixInputParameters_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters___INIT___]
    AVMutableAudioMixInputParameters* var0 = [[AVMutableAudioMixInputParameters alloc ] init];
    org_xmlvm_ios_AVMutableAudioMixInputParameters_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters___INIT___]

    AVMutableAudioMixInputParameters* var0 = [[AVMutableAudioMixInputParameters alloc]init];

    org_xmlvm_ios_AVMutableAudioMixInputParameters_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters_audioMixInputParametersWithTrack___org_xmlvm_ios_AVAssetTrack]

    AVMutableAudioMixInputParameters* var0 =  [AVMutableAudioMixInputParameters  audioMixInputParametersWithTrack:(AVAssetTrack*) (((org_xmlvm_ios_AVAssetTrack*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters_audioMixInputParameters__]

    AVMutableAudioMixInputParameters* var0 =  [AVMutableAudioMixInputParameters audioMixInputParameters];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters_getTrackID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz trackID];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters_setTrackID___int]

    XMLVM_VAR_THIZ;
    [thiz setTrackID:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters_setVolumeRampFromStartVolume___float_float_org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz  setVolumeRampFromStartVolume:n1 toEndVolume:n2 timeRange:toCMTimeRange(n3)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMixInputParameters_setVolume___float_org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  setVolume:n1 atTime:toCMTime(n2)];

    
//XMLVM_END_WRAPPER
