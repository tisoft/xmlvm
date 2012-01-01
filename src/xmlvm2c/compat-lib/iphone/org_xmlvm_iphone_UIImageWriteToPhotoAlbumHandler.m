#include "xmlvm.h"
#include "org_xmlvm_iphone_NSError.h"
#include "org_xmlvm_iphone_UIImage.h"

#include "org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.h"

__TIB_DEFINITION_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler, // classInitializer
    "org.xmlvm.iphone.UIImageWriteToPhotoAlbumHandler", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_UIImage,
    &__CLASS_org_xmlvm_iphone_NSError,
    &__CLASS_java_lang_Object,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"imageDidFinishWritingWithError",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/UIImage;Lorg/xmlvm/iphone/NSError;Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
};

void __INIT_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler()
{
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    //__TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler);
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.clazz = __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler;
    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler);
    __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_1ARRAY);
    __CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler_2ARRAY);

    __TIB_org_xmlvm_iphone_UIImageWriteToPhotoAlbumHandler.classInitialized = 1;
}

