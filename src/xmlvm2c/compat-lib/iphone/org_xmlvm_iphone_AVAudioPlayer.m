#include "xmlvm.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_NSErrorHolder.h"
#include "org_xmlvm_iphone_AVAudioPlayerDelegate.h"

#include "org_xmlvm_iphone_AVAudioPlayer.h"

__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayer __TIB_org_xmlvm_iphone_AVAudioPlayer = {
    0, // classInitialized
    "org.xmlvm.iphone.AVAudioPlayer", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayer;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayer_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
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

void __INIT_org_xmlvm_iphone_AVAudioPlayer()
{
    __TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_AVAudioPlayer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_AVAudioPlayer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_play__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_playAtTime___double;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[16] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_stop__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[17] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_pause__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[18] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_prepareToPlay__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[19] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getNumberOfLoops__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[20] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setNumberOfLoops___int;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getDelegate__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setDelegate___org_xmlvm_iphone_AVAudioPlayerDelegate;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_isPlaying__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setCurrentTime___double;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getCurrentTime__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_setVolume___float;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getVolume__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getNumberOfChannels__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getDuration__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getURL__;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_getData__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_AVAudioPlayer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_AVAudioPlayer.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_AVAudioPlayer.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_AVAudioPlayer.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_AVAudioPlayer.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_AVAudioPlayer.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_AVAudioPlayer = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_AVAudioPlayer);
    __TIB_org_xmlvm_iphone_AVAudioPlayer.clazz = __CLASS_org_xmlvm_iphone_AVAudioPlayer;
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayer, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_AVAudioPlayer]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_AVAudioPlayer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_AVAudioPlayer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_AVAudioPlayer()
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    org_xmlvm_iphone_AVAudioPlayer* me = (org_xmlvm_iphone_AVAudioPlayer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_AVAudioPlayer));
    me->tib = &__TIB_org_xmlvm_iphone_AVAudioPlayer;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_AVAudioPlayer]
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
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayer.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_audioPlayerWithData___org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSErrorHolder]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_play__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_play__]
    XMLVM_NOT_IMPLEMENTED();
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
    XMLVM_NOT_IMPLEMENTED();
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
    XMLVM_NOT_IMPLEMENTED();
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
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_AVAudioPlayer_isPlaying__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_isPlaying__]
    XMLVM_NOT_IMPLEMENTED();
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
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_setVolume___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_setVolume___float]
    XMLVM_NOT_IMPLEMENTED();
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

