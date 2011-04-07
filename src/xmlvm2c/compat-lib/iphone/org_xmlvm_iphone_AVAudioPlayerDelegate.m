#include "xmlvm.h"
#include "org_xmlvm_iphone_AVAudioPlayer.h"
#include "org_xmlvm_iphone_NSError.h"

#include "org_xmlvm_iphone_AVAudioPlayerDelegate.h"

__TIB_DEFINITION_org_xmlvm_iphone_AVAudioPlayerDelegate __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate = {
    0, // classInitializationBegan
    0, // classInitialized
    __INIT_org_xmlvm_iphone_AVAudioPlayerDelegate, // classInitializer
    "org.xmlvm.iphone.AVAudioPlayerDelegate", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_AVAudioPlayerDelegate()
{
    staticInitializerRecursiveLock(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized) {
        __INIT_IMPL_org_xmlvm_iphone_AVAudioPlayerDelegate();
    }
    staticInitializerRecursiveUnlock(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);
}

void __INIT_IMPL_org_xmlvm_iphone_AVAudioPlayerDelegate()
{
    if (!__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitializationBegan) {
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitializationBegan = 1;
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numInterfaces = 0;
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.declaredFields = &__field_reflection_data[0];
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_AVAudioPlayerDelegate);
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.clazz = __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate;
        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.baseType = JAVA_NULL;
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate);
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_1ARRAY);
        __CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_AVAudioPlayerDelegate_2ARRAY);

        __TIB_org_xmlvm_iphone_AVAudioPlayerDelegate.classInitialized = 1;

    }
}

