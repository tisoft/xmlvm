#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"
#include "org_xmlvm_iphone_AVAudioPlayerDelegate.h"

#include "org_xmlvm_iphone_AVAudioPlayer.h"

#define XMLVM_CURRENT_CLASS_NAME AVAudioPlayer
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_AVAudioPlayer

__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayer __TIB_org_xmlvm_iphone_AVAudioPlayer = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_AVAudioPlayer, // classInitializer
    "org.xmlvm.iphone.AVAudioPlayer", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_AVAudioPlayer), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayer_3ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayer_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayer_1ARRAY;

//XMLVM_BEGIN_IMPLEMENTATION
#import <AVFoundation/AVFoundation.h>

@interface AVAudioPlayerDelegateWrapper : NSObject <AVAudioPlayerDelegate> {
    
    JAVA_OBJECT delegate;
    JAVA_OBJECT player;
}

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
                       :(JAVA_OBJECT) player_;
- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer*) player successfully:(BOOL) flag;
- (void) audioPlayerDecodeErrorDidOccur:(AVAudioPlayer*) player error:(NSError*) error;
- (void) audioPlayerBeginInterruption:(AVAudioPlayer*) player;
- (void) audioPlayerEndInterruption:(AVAudioPlayer*) player;
@end


@implementation AVAudioPlayerDelegateWrapper

- (id) initWithDelegate:(JAVA_OBJECT) delegate_
                       :(JAVA_OBJECT) player_
{
    [super init];
    self->delegate = delegate_;
    self->player = player_;
    return self;
}

- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer*) player successfully:(BOOL) flag
{
    Func_VOOB toCall = *(((java_lang_Object*)self->delegate)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_AVAudioPlayerDelegate_audioPlayerDidFinishPlaying___org_xmlvm_iphone_AVAudioPlayer_boolean];
	toCall(self->delegate, self->player, flag);
}

- (void) audioPlayerDecodeErrorDidOccur:(AVAudioPlayer*) player error:(NSError*) error
{
    Func_VOOO toCall = *(((java_lang_Object*)self->delegate)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_AVAudioPlayerDelegate_audioPlayerDecodeErrorDidOccur___org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_NSError];
    //TODO wrap the error object
	toCall(self->delegate, self->player, JAVA_NULL);
}

- (void) audioPlayerBeginInterruption:(AVAudioPlayer*) player
{
    Func_VOO toCall = *(((java_lang_Object*)self->delegate)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_AVAudioPlayerDelegate_audioPlayerBeginInterruption___org_xmlvm_iphone_AVAudioPlayer];
	toCall(self->delegate, self->player);
}

- (void) audioPlayerEndInterruption:(AVAudioPlayer*) player
{
    Func_VOO toCall = *(((java_lang_Object*)self->delegate)->tib->itableBegin)[XMLVM_ITABLE_IDX_org_xmlvm_iphone_AVAudioPlayerDelegate_audioPlayerEndInterruption___org_xmlvm_iphone_AVAudioPlayer];
	toCall(self->delegate, self->player);
}

@end

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_AVAudioPlayer();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSData,
    &__CLASS_org_xmlvm_iphone_NSErrorHolder,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate,
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_double,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_float,
};

static JAVA_OBJECT* __method15_arg_types[] = {
};

static JAVA_OBJECT* __method16_arg_types[] = {
};

static JAVA_OBJECT* __method17_arg_types[] = {
};

static JAVA_OBJECT* __method18_arg_types[] = {
};

static JAVA_OBJECT* __method19_arg_types[] = {
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"audioPlayerWithContentsOfURL",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"audioPlayerWithData",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"play",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"playAtTime",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"stop",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"pause",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"prepareToPlay",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNumberOfLoops",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setNumberOfLoops",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDelegate",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setDelegate",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"isPlaying",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setCurrentTime",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getCurrentTime",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"setVolume",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getVolume",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getNumberOfChannels",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getDuration",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getURL",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {"getData",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder(argsArray[0], argsArray[1]);
        break;
    case 1:
        org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder(argsArray[0], argsArray[1]);
        break;
    case 2:
        org_xmlvm_iphone_AVAudioPlayer_play__(receiver);
        break;
    case 3:
        org_xmlvm_iphone_AVAudioPlayer_playAtTime___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 4:
        org_xmlvm_iphone_AVAudioPlayer_stop__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_AVAudioPlayer_pause__(receiver);
        break;
    case 6:
        org_xmlvm_iphone_AVAudioPlayer_prepareToPlay__(receiver);
        break;
    case 7:
        org_xmlvm_iphone_AVAudioPlayer_getNumberOfLoops__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_AVAudioPlayer_setNumberOfLoops___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_AVAudioPlayer_getDelegate__(receiver);
        break;
    case 10:
        org_xmlvm_iphone_AVAudioPlayer_setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_AVAudioPlayer_isPlaying__(receiver);
        break;
    case 12:
        org_xmlvm_iphone_AVAudioPlayer_setCurrentTime___double(receiver, ((java_lang_Double*) argsArray[0])->fields.java_lang_Double.value_);
        break;
    case 13:
        org_xmlvm_iphone_AVAudioPlayer_getCurrentTime__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_AVAudioPlayer_setVolume___float(receiver, ((java_lang_Float*) argsArray[0])->fields.java_lang_Float.value_);
        break;
    case 15:
        org_xmlvm_iphone_AVAudioPlayer_getVolume__(receiver);
        break;
    case 16:
        org_xmlvm_iphone_AVAudioPlayer_getNumberOfChannels__(receiver);
        break;
    case 17:
        org_xmlvm_iphone_AVAudioPlayer_getDuration__(receiver);
        break;
    case 18:
        org_xmlvm_iphone_AVAudioPlayer_getURL__(receiver);
        break;
    case 19:
        org_xmlvm_iphone_AVAudioPlayer_getData__(receiver);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_AVAudioPlayer()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_AVAudioPlayer);
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_AVAudioPlayer();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_AVAudioPlayer);
}

void __INIT_IMPL_org_xmlvm_iphone_AVAudioPlayer()
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_AVAudioPlayer.classInitializationBegan = 1;

        // Initialize base class if necessary
        if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_IMPL_org_xmlvm_iphone_NSObject();
        __TIB_org_xmlvm_iphone_AVAudioPlayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer;
        // Copy vtable from base class
        XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_AVAudioPlayer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
        // Initialize vtable for this class
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[9] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_play__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[10] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_playAtTime___double;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_stop__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_pause__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_prepareToPlay__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getNumberOfLoops__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setNumberOfLoops___int;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getDelegate__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_isPlaying__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setCurrentTime___double;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getCurrentTime__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setVolume___float;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getVolume__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getNumberOfChannels__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getDuration__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getURL__;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getData__;
        // Initialize interface information
        __TIB_org_xmlvm_iphone_AVAudioPlayer.numImplementedInterfaces = 0;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

        // Initialize interfaces if necessary and assign tib to implementedInterfaces

        __TIB_org_xmlvm_iphone_AVAudioPlayer.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_AVAudioPlayer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_AVAudioPlayer.constructorDispatcherFunc = constructor_dispatcher;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.declaredConstructors = &__constructor_reflection_data[0];
        __TIB_org_xmlvm_iphone_AVAudioPlayer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
        __TIB_org_xmlvm_iphone_AVAudioPlayer.methodDispatcherFunc = method_dispatcher;
        __TIB_org_xmlvm_iphone_AVAudioPlayer.declaredMethods = &__method_reflection_data[0];
        __TIB_org_xmlvm_iphone_AVAudioPlayer.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
        __CLASS_org_xmlvm_iphone_AVAudioPlayer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_AVAudioPlayer);
        __TIB_org_xmlvm_iphone_AVAudioPlayer.clazz = __CLASS_org_xmlvm_iphone_AVAudioPlayer;
        __CLASS_org_xmlvm_iphone_AVAudioPlayer_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayer, 3);
        __CLASS_org_xmlvm_iphone_AVAudioPlayer_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayer, 2);
        __CLASS_org_xmlvm_iphone_AVAudioPlayer_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayer, 1);

        //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_AVAudioPlayer]
        //XMLVM_END_WRAPPER

        __TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized = 1;
    }
}

void __DELETE_org_xmlvm_iphone_AVAudioPlayer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_AVAudioPlayer]
	org_xmlvm_iphone_AVAudioPlayer* thiz = me;
    [thiz->fields.org_xmlvm_iphone_AVAudioPlayer.delegateObjC release];
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT me)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_AVAudioPlayer()
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    org_xmlvm_iphone_AVAudioPlayer* me = (org_xmlvm_iphone_AVAudioPlayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_AVAudioPlayer));
    me->tib = &__TIB_org_xmlvm_iphone_AVAudioPlayer;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_AVAudioPlayer(me);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_AVAudioPlayer]
    me->fields.org_xmlvm_iphone_AVAudioPlayer.delegateC = JAVA_NULL;
    me->fields.org_xmlvm_iphone_AVAudioPlayer.delegateObjC = nil;
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_AVAudioPlayer);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithContentsOfURL___org_xmlvm_iphone_NSURL_org_xmlvm_iphone_NSErrorHolder]
    org_xmlvm_iphone_NSURL* url = n1;
    AVAudioPlayer* player = [[AVAudioPlayer alloc] initWithContentsOfURL:url->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj error:NULL];
    org_xmlvm_iphone_AVAudioPlayer* me = __NEW_org_xmlvm_iphone_AVAudioPlayer();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, player);
    return me;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_VAR_IOS(NSData, data, n1);
    XMLVM_VAR_J2SE(org_xmlvm_iphone_NSErrorHolder, errorHolder, n2);
    AVAudioPlayer* player = [[AVAudioPlayer alloc] initWithData:data error:NULL];
    JAVA_OBJECT jplayer = __NEW_org_xmlvm_iphone_AVAudioPlayer();
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(jplayer, player);
    return jplayer;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_play__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_play__]
    XMLVM_VAR_THIZ;
    return [thiz play];
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_playAtTime___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_playAtTime___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_stop__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_stop__]
    XMLVM_VAR_THIZ;
    [thiz stop];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_pause__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_pause__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_prepareToPlay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_prepareToPlay__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_AVAudioPlayer_getNumberOfLoops__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getNumberOfLoops__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_setNumberOfLoops___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_setNumberOfLoops___int]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT(loops, n1);
    [thiz setNumberOfLoops:loops];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_getDelegate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getDelegate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate]
    XMLVM_VAR_THIZ;
    
    [jthiz->fields.org_xmlvm_iphone_AVAudioPlayer.delegateObjC release];
    AVAudioPlayerDelegateWrapper* delegateWrapper = [[AVAudioPlayerDelegateWrapper alloc] initWithDelegate:n1:me];
    [thiz setDelegate:delegateWrapper];
    jthiz->fields.org_xmlvm_iphone_AVAudioPlayer.delegateObjC = delegateWrapper;
    // We keep a C-reference to the delegate to tell the GC about the association
    jthiz->fields.org_xmlvm_iphone_AVAudioPlayer.delegateC = n1;
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_isPlaying__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_isPlaying__]
    XMLVM_VAR_THIZ;
    return [thiz isPlaying];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_setCurrentTime___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_setCurrentTime___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_AVAudioPlayer_getCurrentTime__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getCurrentTime__]
    XMLVM_VAR_THIZ;
    return thiz.currentTime;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_setVolume___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_setVolume___float]
    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT(volume, n1);
    [thiz setVolume:volume];
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_AVAudioPlayer_getVolume__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getVolume__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_AVAudioPlayer_getNumberOfChannels__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getNumberOfChannels__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE org_xmlvm_iphone_AVAudioPlayer_getDuration__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getDuration__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_getURL__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getURL__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_getData__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_getData__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_access$000___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$000___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_access$100___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$100___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_access$200___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$200___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_access$300___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$300___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_AVAudioPlayer_access$400___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$400___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_AVAudioPlayer_access$410___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$410___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_access$502___org_xmlvm_iphone_AVAudioPlayer_boolean(JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$502___org_xmlvm_iphone_AVAudioPlayer_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_access$600___org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_access$600___org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

