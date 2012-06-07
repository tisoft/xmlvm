
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAssetTrack (AVAssetTrackWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAssetTrack (AVAssetTrackWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAssetTrack.classInitialized)
        __INIT_org_xmlvm_ios_AVAssetTrack();
}
@end

void org_xmlvm_ios_AVAssetTrack_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAssetTrack class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAssetTrack();
        org_xmlvm_ios_AVAssetTrack_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAssetTrack]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAssetTrack]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack___INIT___]
    AVAssetTrack* var0 = [[AVAssetTrack alloc ] init];
    org_xmlvm_ios_AVAssetTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack___INIT___]

    AVAssetTrack* var0 = [[AVAssetTrack alloc]init];

    org_xmlvm_ios_AVAssetTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getAsset__]

    XMLVM_VAR_THIZ;
    AVAsset* var0 = [thiz asset];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getTrackID__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz trackID];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getMediaType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz mediaType];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getFormatDescriptions__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz formatDescriptions];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_isEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_isSelfContained__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isSelfContained];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getTotalSampleDataLength__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz totalSampleDataLength];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_hasMediaCharacteristic___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  hasMediaCharacteristic:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getTimeRange__]

    XMLVM_VAR_THIZ;
    CMTimeRange var0 = [thiz timeRange];
    
    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getNaturalTimeScale__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz naturalTimeScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getEstimatedDataRate__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz estimatedDataRate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getLanguageCode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz languageCode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getExtendedLanguageTag__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz extendedLanguageTag];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getNaturalSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz naturalSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getPreferredTransform__]

    XMLVM_VAR_THIZ;
    CGAffineTransform var0 = [thiz preferredTransform];
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getPreferredVolume__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz preferredVolume];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getNominalFrameRate__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz nominalFrameRate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getSegments__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz segments];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_segmentForTrackTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    
    AVAssetTrackSegment* var0 = [thiz  segmentForTrackTime:toCMTime(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_samplePresentationTimeForTrackTime___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    
    CMTime var0 = [thiz  samplePresentationTimeForTrackTime:toCMTime(n1)];

    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getCommonMetadata__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz commonMetadata];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_getAvailableMetadataFormats__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz availableMetadataFormats];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAssetTrack_metadataForFormat___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  metadataForFormat:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER
