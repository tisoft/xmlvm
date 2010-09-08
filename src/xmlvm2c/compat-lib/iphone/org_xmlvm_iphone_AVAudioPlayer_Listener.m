#include "javazoom_jlgui_basicplayer_BasicPlayerEvent.h"
#include "javazoom_jlgui_basicplayer_BasicPlayerListener.h"
#include "org_xmlvm_iphone_AVAudioPlayer.h"
#include "javazoom_jlgui_basicplayer_BasicController.h"
#include "java_util_Map.h"

#include "org_xmlvm_iphone_AVAudioPlayer_Listener.h"

__CLASS_DEFINITION_org_xmlvm_iphone_AVAudioPlayer_Listener __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener = {
    0, // classInitialized
    "org.xmlvm.iphone.AVAudioPlayer$Listener", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_AVAudioPlayer_Listener()
{
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer_Listener;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.vtable[11] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_Listener_opened___java_lang_Object_java_util_Map;
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.vtable[12] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_Listener_progress___int_long_byte_ARRAYTYPE_java_util_Map;
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.vtable[13] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_Listener_setController___javazoom_jlgui_basicplayer_BasicController;
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_AVAudioPlayer_Listener_stateUpdated___javazoom_jlgui_basicplayer_BasicPlayerEvent;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_AVAudioPlayer_Listener]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_AVAudioPlayer_Listener()
{
    if (!__CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer_Listener();
    org_xmlvm_iphone_AVAudioPlayer_Listener* me = (org_xmlvm_iphone_AVAudioPlayer_Listener*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_AVAudioPlayer_Listener));
    me->__class = &__CLASS_org_xmlvm_iphone_AVAudioPlayer_Listener;
    me->org_xmlvm_iphone_AVAudioPlayer_Listener.this_0_ = (org_xmlvm_iphone_AVAudioPlayer*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_AVAudioPlayer_Listener]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer_Listener()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_AVAudioPlayer_Listener(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_AVAudioPlayer_Listener]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_Listener___INIT____org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_Listener___INIT____org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_Listener_opened___java_lang_Object_java_util_Map(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_Listener_opened___java_lang_Object_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_Listener_progress___int_long_byte_ARRAYTYPE_java_util_Map(JAVA_OBJECT me, JAVA_INT n1, JAVA_LONG n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_Listener_progress___int_long_byte_ARRAYTYPE_java_util_Map]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_Listener_setController___javazoom_jlgui_basicplayer_BasicController(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_Listener_setController___javazoom_jlgui_basicplayer_BasicController]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_Listener_stateUpdated___javazoom_jlgui_basicplayer_BasicPlayerEvent(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_Listener_stateUpdated___javazoom_jlgui_basicplayer_BasicPlayerEvent]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

