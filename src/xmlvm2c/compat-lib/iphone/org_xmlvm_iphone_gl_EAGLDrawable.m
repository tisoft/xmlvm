#include "xmlvm.h"

#include "org_xmlvm_iphone_gl_EAGLDrawable.h"

__TIB_DEFINITION_org_xmlvm_iphone_gl_EAGLDrawable __TIB_org_xmlvm_iphone_gl_EAGLDrawable = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_gl_EAGLDrawable, // classInitializer
    "org.xmlvm.iphone.gl.EAGLDrawable", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    -1, // sizeInstance
    XMLVM_TYPE_INTERFACE};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLDrawable;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLDrawable_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLDrawable_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_gl_EAGLDrawable_3ARRAY;

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

void __INIT_org_xmlvm_iphone_gl_EAGLDrawable()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_gl_EAGLDrawable);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_gl_EAGLDrawable.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_gl_EAGLDrawable);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_gl_EAGLDrawable.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_gl_EAGLDrawable.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_gl_EAGLDrawable.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_gl_EAGLDrawable();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_gl_EAGLDrawable()
{
    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.numInterfaces = 0;
    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);

    __CLASS_org_xmlvm_iphone_gl_EAGLDrawable = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_gl_EAGLDrawable);
    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.clazz = __CLASS_org_xmlvm_iphone_gl_EAGLDrawable;
    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_gl_EAGLDrawable_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_EAGLDrawable);
    __CLASS_org_xmlvm_iphone_gl_EAGLDrawable_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_EAGLDrawable_1ARRAY);
    __CLASS_org_xmlvm_iphone_gl_EAGLDrawable_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_gl_EAGLDrawable_2ARRAY);

    __TIB_org_xmlvm_iphone_gl_EAGLDrawable.classInitialized = 1;
}

