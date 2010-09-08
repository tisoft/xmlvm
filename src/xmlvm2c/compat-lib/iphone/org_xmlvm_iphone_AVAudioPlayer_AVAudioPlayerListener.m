#include "javazoom_jlgui_basicplayer_BasicPlayerListener.h"
#include "org_xmlvm_iphone_AVAudioPlayer.h"

#include "org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.h"

__CLASS_DEFINITION_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener __CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener = {
    0, // classInitialized
    "org.xmlvm.iphone.AVAudioPlayer$AVAudioPlayerListener", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener()
{
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.vtable, __CLASS_java_lang_Object.vtable, sizeof(__CLASS_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener()
{
    if (!__CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.classInitialized) __INIT_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener();
    org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener* me = (org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener));
    me->__class = &__CLASS_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener;
    me->org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener.this_0_ = (org_xmlvm_iphone_AVAudioPlayer*) JAVA_NULL;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void __DELETE_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener___INIT____org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_AVAudioPlayer(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_AVAudioPlayer_AVAudioPlayerListener___INIT____org_xmlvm_iphone_AVAudioPlayer_org_xmlvm_iphone_AVAudioPlayer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

