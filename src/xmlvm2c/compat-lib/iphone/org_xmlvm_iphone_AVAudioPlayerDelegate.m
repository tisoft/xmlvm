#include "org_xmlvm_iphone_AVAudioPlayer.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_AVAudioPlayerDelegate.h"

__CLASS_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;


void __INIT_org_xmlvm_iphone_AVAudioPlayerDelegate(__CLASS_DEFINITION_TEMPLATE** interface)
{
    if (!__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized) {
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate.className = "org.xmlvm.iphone.AVAudioPlayerDelegate";
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate.extends = (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_java_lang_Object;
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate.numInterfaces = 0;
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate));
        XMLVM_MEMCPY(*interface, &__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate, sizeof(__CLASS_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate));
    }
}

