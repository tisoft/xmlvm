
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKMatch (GKMatchWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKMatch (GKMatchWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKMatch.classInitialized)
        __INIT_org_xmlvm_ios_GKMatch();
}
@end

void org_xmlvm_ios_GKMatch_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKMatch class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKMatch();
        org_xmlvm_ios_GKMatch_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKMatch]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKMatch]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch___INIT___]
    GKMatch* var0 = [[GKMatch alloc ] init];
    org_xmlvm_ios_GKMatch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch___INIT___]

    GKMatch* var0 = [[GKMatch alloc]init];

    org_xmlvm_ios_GKMatch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_getPlayerIDs__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz playerIDs];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_setDelegate___org_xmlvm_ios_GKMatchDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_GKMatchDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_GKMatchDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_getExpectedPlayerCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz expectedPlayerCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_sendData___org_xmlvm_ios_NSData_java_util_List_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  sendData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) toPlayers:ObjCVar2 withDataMode:n3 error:&var4];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_sendDataToAllPlayers___org_xmlvm_ios_NSData_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  sendDataToAllPlayers:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withDataMode:n2 error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_disconnect__]

    XMLVM_VAR_THIZ;
    [thiz disconnect];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatch_voiceChatWithName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    GKVoiceChat* var0 = [thiz  voiceChatWithName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
