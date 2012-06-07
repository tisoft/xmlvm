
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKVoiceChatService (GKVoiceChatServiceWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKVoiceChatService (GKVoiceChatServiceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKVoiceChatService.classInitialized)
        __INIT_org_xmlvm_ios_GKVoiceChatService();
}
@end

void org_xmlvm_ios_GKVoiceChatService_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKVoiceChatService class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKVoiceChatService();
        org_xmlvm_ios_GKVoiceChatService_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKVoiceChatService]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKVoiceChatService]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService___INIT___]
    GKVoiceChatService* var0 = [[GKVoiceChatService alloc ] init];
    org_xmlvm_ios_GKVoiceChatService_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService___INIT___]

    GKVoiceChatService* var0 = [[GKVoiceChatService alloc]init];

    org_xmlvm_ios_GKVoiceChatService_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_defaultVoiceChatService__]

    GKVoiceChatService* var0 =  [GKVoiceChatService defaultVoiceChatService];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_isVoIPAllowed__]

    BOOL var0 =  [GKVoiceChatService isVoIPAllowed];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_getClient__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_setClient___org_xmlvm_ios_GKVoiceChatClient]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_GKVoiceChatClient_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_GKVoiceChatClient(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setClient:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_startVoiceChatWithParticipantID___java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  startVoiceChatWithParticipantID:ObjCVar1 error:&var2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_stopVoiceChatWithParticipantID___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  stopVoiceChatWithParticipantID:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_acceptCallID___int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  acceptCallID:n1 error:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_denyCallID___int]

    XMLVM_VAR_THIZ;
    [thiz  denyCallID:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_receivedRealTimeData___org_xmlvm_ios_NSData_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  receivedRealTimeData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) fromParticipantID:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_receivedData___org_xmlvm_ios_NSData_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  receivedData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) fromParticipantID:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_isMicrophoneMuted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isMicrophoneMuted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_setMicrophoneMuted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMicrophoneMuted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_getRemoteParticipantVolume__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz remoteParticipantVolume];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_setRemoteParticipantVolume___float]

    XMLVM_VAR_THIZ;
    [thiz setRemoteParticipantVolume:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_isOutputMeteringEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isOutputMeteringEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_setOutputMeteringEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setOutputMeteringEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_isInputMeteringEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isInputMeteringEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_setInputMeteringEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setInputMeteringEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_getOutputMeterLevel__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz outputMeterLevel];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKVoiceChatService_getInputMeterLevel__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz inputMeterLevel];
    
    return var0;
//XMLVM_END_WRAPPER
