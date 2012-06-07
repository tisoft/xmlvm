
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAudioPlayer (AVAudioPlayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAudioPlayer (AVAudioPlayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAudioPlayer.classInitialized)
        __INIT_org_xmlvm_ios_AVAudioPlayer();
}
@end

void org_xmlvm_ios_AVAudioPlayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAudioPlayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAudioPlayer();
        org_xmlvm_ios_AVAudioPlayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAudioPlayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAudioPlayer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer___INIT____org_xmlvm_ios_NSURL_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    AVAudioPlayer* var0 = [[AVAudioPlayer alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];
    org_xmlvm_ios_AVAudioPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer___INIT____org_xmlvm_ios_NSData_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    AVAudioPlayer* var0 = [[AVAudioPlayer alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];
    org_xmlvm_ios_AVAudioPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer___INIT___]
    AVAudioPlayer* var0 = [[AVAudioPlayer alloc ] init];
    org_xmlvm_ios_AVAudioPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer___INIT___]

    AVAudioPlayer* var0 = [[AVAudioPlayer alloc]init];

    org_xmlvm_ios_AVAudioPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_prepareToPlay__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz prepareToPlay];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_play__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz play];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_playAtTime___double]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  playAtTime:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_pause__]

    XMLVM_VAR_THIZ;
    [thiz pause];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_stop__]

    XMLVM_VAR_THIZ;
    [thiz stop];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_isPlaying__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPlaying];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getNumberOfChannels__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfChannels];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz duration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_setDelegate___org_xmlvm_ios_AVAudioPlayerDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_AVAudioPlayerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_AVAudioPlayerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getUrl__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz url];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getData__]

    XMLVM_VAR_THIZ;
    NSData* var0 = [thiz data];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getPan__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz pan];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_setPan___float]

    XMLVM_VAR_THIZ;
    [thiz setPan:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getVolume__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz volume];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_setVolume___float]

    XMLVM_VAR_THIZ;
    [thiz setVolume:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getCurrentTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz currentTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_setCurrentTime___double]

    XMLVM_VAR_THIZ;
    [thiz setCurrentTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getDeviceCurrentTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz deviceCurrentTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getNumberOfLoops__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfLoops];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_setNumberOfLoops___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfLoops:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_getSettings__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_isMeteringEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isMeteringEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_setMeteringEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMeteringEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_updateMeters__]

    XMLVM_VAR_THIZ;
    [thiz updateMeters];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_peakPowerForChannel___int]

    XMLVM_VAR_THIZ;
    
    float var0 = [thiz  peakPowerForChannel:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioPlayer_averagePowerForChannel___int]

    XMLVM_VAR_THIZ;
    
    float var0 = [thiz  averagePowerForChannel:n1];

    return var0;
//XMLVM_END_WRAPPER
