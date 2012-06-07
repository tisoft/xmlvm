
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMusicPlayerController (MPMusicPlayerControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMusicPlayerController (MPMusicPlayerControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMusicPlayerController.classInitialized)
        __INIT_org_xmlvm_ios_MPMusicPlayerController();
}
@end

void org_xmlvm_ios_MPMusicPlayerController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMusicPlayerController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMusicPlayerController();
        org_xmlvm_ios_MPMusicPlayerController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMusicPlayerController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMusicPlayerController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController___INIT___]
    MPMusicPlayerController* var0 = [[MPMusicPlayerController alloc ] init];
    org_xmlvm_ios_MPMusicPlayerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController___INIT___]

    MPMusicPlayerController* var0 = [[MPMusicPlayerController alloc]init];

    org_xmlvm_ios_MPMusicPlayerController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_applicationMusicPlayer__]

    MPMusicPlayerController* var0 =  [MPMusicPlayerController applicationMusicPlayer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_iPodMusicPlayer__]

    MPMusicPlayerController* var0 =  [MPMusicPlayerController iPodMusicPlayer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_getPlaybackState__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz playbackState];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_getRepeatMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz repeatMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setRepeatMode___int]

    XMLVM_VAR_THIZ;
    [thiz setRepeatMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_getShuffleMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz shuffleMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setShuffleMode___int]

    XMLVM_VAR_THIZ;
    [thiz setShuffleMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_getVolume__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz volume];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setVolume___float]

    XMLVM_VAR_THIZ;
    [thiz setVolume:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_getNowPlayingItem__]

    XMLVM_VAR_THIZ;
    MPMediaItem* var0 = [thiz nowPlayingItem];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setNowPlayingItem___org_xmlvm_ios_MPMediaItem]

    XMLVM_VAR_THIZ;
    [thiz setNowPlayingItem:(MPMediaItem*) (((org_xmlvm_ios_MPMediaItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setQueueWithQuery___org_xmlvm_ios_MPMediaQuery]

    XMLVM_VAR_THIZ;
    [thiz  setQueueWithQuery:(MPMediaQuery*) (((org_xmlvm_ios_MPMediaQuery*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setQueueWithItemCollection___org_xmlvm_ios_MPMediaItemCollection]

    XMLVM_VAR_THIZ;
    [thiz  setQueueWithItemCollection:(MPMediaItemCollection*) (((org_xmlvm_ios_MPMediaItemCollection*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_play__]

    XMLVM_VAR_THIZ;
    [thiz play];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_pause__]

    XMLVM_VAR_THIZ;
    [thiz pause];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_stop__]

    XMLVM_VAR_THIZ;
    [thiz stop];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_getCurrentPlaybackTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz currentPlaybackTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_setCurrentPlaybackTime___double]

    XMLVM_VAR_THIZ;
    [thiz setCurrentPlaybackTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_beginSeekingForward__]

    XMLVM_VAR_THIZ;
    [thiz beginSeekingForward];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_beginSeekingBackward__]

    XMLVM_VAR_THIZ;
    [thiz beginSeekingBackward];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_endSeeking__]

    XMLVM_VAR_THIZ;
    [thiz endSeeking];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_skipToNextItem__]

    XMLVM_VAR_THIZ;
    [thiz skipToNextItem];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_skipToBeginning__]

    XMLVM_VAR_THIZ;
    [thiz skipToBeginning];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_skipToPreviousItem__]

    XMLVM_VAR_THIZ;
    [thiz skipToPreviousItem];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_beginGeneratingPlaybackNotifications__]

    XMLVM_VAR_THIZ;
    [thiz beginGeneratingPlaybackNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMusicPlayerController_endGeneratingPlaybackNotifications__]

    XMLVM_VAR_THIZ;
    [thiz endGeneratingPlaybackNotifications];

    
//XMLVM_END_WRAPPER
