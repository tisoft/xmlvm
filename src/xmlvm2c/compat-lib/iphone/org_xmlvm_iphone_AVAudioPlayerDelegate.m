#include "xmlvm.h"
#include "org_xmlvm_iphone_AVAudioPlayer.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_AVAudioPlayerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate;

JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_ARRAYTYPE;


static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_FOR_CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate(__TIB_DEFINITION_TEMPLATE** interface)
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized) {
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.className = "org.xmlvm.iphone.AVAudioPlayerDelegate";
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object;
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.flags = XMLVM_TYPE_INTERFACE;
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.clazz = __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate, 1);
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__TIB_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate));
        XMLVM_MEMCPY(*interface, &__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate, sizeof(__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate));
    }
}

void __INIT_org_xmlvm_iphone_AVAudioPlayerDelegate()
{
    __INIT_FOR_CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate(JAVA_NULL);
}

