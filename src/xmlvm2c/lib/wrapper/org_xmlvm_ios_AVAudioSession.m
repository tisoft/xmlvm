
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAudioSession (AVAudioSessionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAudioSession (AVAudioSessionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAudioSession.classInitialized)
        __INIT_org_xmlvm_ios_AVAudioSession();
}
@end

void org_xmlvm_ios_AVAudioSession_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAudioSession class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAudioSession();
        org_xmlvm_ios_AVAudioSession_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAudioSession]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAudioSession]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession___INIT___]
    AVAudioSession* var0 = [[AVAudioSession alloc ] init];
    org_xmlvm_ios_AVAudioSession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession___INIT___]

    AVAudioSession* var0 = [[AVAudioSession alloc]init];

    org_xmlvm_ios_AVAudioSession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_sharedInstance__]

    NSObject* var0 =  [AVAudioSession sharedInstance];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_setDelegate___org_xmlvm_ios_AVAudioSessionDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_AVAudioSessionDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_AVAudioSessionDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_setActive___boolean_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  setActive:n1 error:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_setActive___boolean_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  setActive:n1 withFlags:n2 error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_setCategory___java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  setCategory:ObjCVar1 error:&var2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_setPreferredHardwareSampleRate___double_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  setPreferredHardwareSampleRate:n1 error:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_setPreferredIOBufferDuration___double_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  setPreferredIOBufferDuration:n1 error:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getCategory__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz category];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getPreferredHardwareSampleRate__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz preferredHardwareSampleRate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getPreferredIOBufferDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz preferredIOBufferDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getInputIsAvailable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz inputIsAvailable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getCurrentHardwareSampleRate__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz currentHardwareSampleRate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getCurrentHardwareInputNumberOfChannels__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz currentHardwareInputNumberOfChannels];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioSession_getCurrentHardwareOutputNumberOfChannels__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz currentHardwareOutputNumberOfChannels];
    
    return var0;
//XMLVM_END_WRAPPER
