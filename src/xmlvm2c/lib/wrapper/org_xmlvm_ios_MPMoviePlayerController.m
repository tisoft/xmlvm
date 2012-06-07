
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMoviePlayerController (MPMoviePlayerControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMoviePlayerController (MPMoviePlayerControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMoviePlayerController.classInitialized)
        __INIT_org_xmlvm_ios_MPMoviePlayerController();
}
@end

void org_xmlvm_ios_MPMoviePlayerController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMoviePlayerController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMoviePlayerController();
        org_xmlvm_ios_MPMoviePlayerController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMoviePlayerController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMoviePlayerController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController___INIT____org_xmlvm_ios_NSURL]

    MPMoviePlayerController* var0 = [[MPMoviePlayerController alloc] initWithContentURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_MPMoviePlayerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController___INIT___]
    MPMoviePlayerController* var0 = [[MPMoviePlayerController alloc ] init];
    org_xmlvm_ios_MPMoviePlayerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController___INIT___]

    MPMoviePlayerController* var0 = [[MPMoviePlayerController alloc]init];

    org_xmlvm_ios_MPMoviePlayerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getContentURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz contentURL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setContentURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    [thiz setContentURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz view];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getBackgroundView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz backgroundView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getPlaybackState__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz playbackState];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getLoadState__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz loadState];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getControlStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz controlStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setControlStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setControlStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getRepeatMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz repeatMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setRepeatMode___int]

    XMLVM_VAR_THIZ;
    [thiz setRepeatMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getShouldAutoplay__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz shouldAutoplay];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setShouldAutoplay___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShouldAutoplay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getUseApplicationAudioSession__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz useApplicationAudioSession];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setUseApplicationAudioSession___boolean]

    XMLVM_VAR_THIZ;
    [thiz setUseApplicationAudioSession:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_isFullscreen__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isFullscreen];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setFullscreen___boolean]

    XMLVM_VAR_THIZ;
    [thiz setFullscreen:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setFullscreen___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setFullscreen:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getScalingMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz scalingMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setScalingMode___int]

    XMLVM_VAR_THIZ;
    [thiz setScalingMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getMovieMediaTypes__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz movieMediaTypes];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getMovieSourceType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz movieSourceType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setMovieSourceType___int]

    XMLVM_VAR_THIZ;
    [thiz setMovieSourceType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz duration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getPlayableDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz playableDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getNaturalSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz naturalSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getInitialPlaybackTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz initialPlaybackTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setInitialPlaybackTime___double]

    XMLVM_VAR_THIZ;
    [thiz setInitialPlaybackTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getEndPlaybackTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz endPlaybackTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setEndPlaybackTime___double]

    XMLVM_VAR_THIZ;
    [thiz setEndPlaybackTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getAllowsAirPlay__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsAirPlay];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setAllowsAirPlay___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsAirPlay:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_thumbnailImageAtTime___double_int]

    XMLVM_VAR_THIZ;
    
    UIImage* var0 = [thiz  thumbnailImageAtTime:n1 timeOption:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_requestThumbnailImagesAtTimes___java_util_List_int]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  requestThumbnailImagesAtTimes:ObjCVar1 timeOption:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_cancelAllThumbnailImageRequests__]

    XMLVM_VAR_THIZ;
    [thiz cancelAllThumbnailImageRequests];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_timedMetadata__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz timedMetadata];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getAccessLog__]

    XMLVM_VAR_THIZ;
    MPMovieAccessLog* var0 = [thiz accessLog];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getErrorLog__]

    XMLVM_VAR_THIZ;
    MPMovieErrorLog* var0 = [thiz errorLog];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setBackgroundColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz  setBackgroundColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_backgroundColor__]

    XMLVM_VAR_THIZ;
    
    UIColor* var0 = [thiz backgroundColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setMovieControlMode___int]

    XMLVM_VAR_THIZ;
    [thiz  setMovieControlMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_movieControlMode__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz movieControlMode];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getIsPreparedToPlay__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPreparedToPlay];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getCurrentPlaybackTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz currentPlaybackTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setCurrentPlaybackTime___double]

    XMLVM_VAR_THIZ;
    [thiz setCurrentPlaybackTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_getCurrentPlaybackRate__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz currentPlaybackRate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMoviePlayerController_setCurrentPlaybackRate___float]

    XMLVM_VAR_THIZ;
    [thiz setCurrentPlaybackRate:n1];

    
//XMLVM_END_WRAPPER
