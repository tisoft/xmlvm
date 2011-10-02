#include "xmlvm.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSStringEncoding.h"

#define XMLVM_CURRENT_CLASS_NAME NSStringEncoding
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSStringEncoding

__TIB_DEFINITION_org_xmlvm_iphone_NSStringEncoding __TIB_org_xmlvm_iphone_NSStringEncoding = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSStringEncoding, // classInitializer
    "org.xmlvm.iphone.NSStringEncoding", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSStringEncoding), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringEncoding;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringEncoding_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringEncoding_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSStringEncoding_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_ASCII;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_NEXTSTEP;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_JapaneseEUC;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF8;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin1;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_Symbol;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_NonLossyASCII;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_ShiftJIS;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin2;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_Unicode;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1251;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1252;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1253;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1254;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1250;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_ISO2022JP;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_MacOSRoman;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16BigEndian;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16LittleEndian;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32BigEndian;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32LittleEndian;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"ASCII",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_ASCII,
    "",
    JAVA_NULL},
    {"NEXTSTEP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_NEXTSTEP,
    "",
    JAVA_NULL},
    {"JapaneseEUC",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_JapaneseEUC,
    "",
    JAVA_NULL},
    {"UTF8",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF8,
    "",
    JAVA_NULL},
    {"ISOLatin1",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin1,
    "",
    JAVA_NULL},
    {"Symbol",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_Symbol,
    "",
    JAVA_NULL},
    {"NonLossyASCII",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_NonLossyASCII,
    "",
    JAVA_NULL},
    {"ShiftJIS",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_ShiftJIS,
    "",
    JAVA_NULL},
    {"ISOLatin2",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin2,
    "",
    JAVA_NULL},
    {"Unicode",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_Unicode,
    "",
    JAVA_NULL},
    {"WindowsCP1251",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1251,
    "",
    JAVA_NULL},
    {"WindowsCP1252",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1252,
    "",
    JAVA_NULL},
    {"WindowsCP1253",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1253,
    "",
    JAVA_NULL},
    {"WindowsCP1254",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1254,
    "",
    JAVA_NULL},
    {"WindowsCP1250",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1250,
    "",
    JAVA_NULL},
    {"ISO2022JP",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_ISO2022JP,
    "",
    JAVA_NULL},
    {"MacOSRoman",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_MacOSRoman,
    "",
    JAVA_NULL},
    {"UTF16",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16,
    "",
    JAVA_NULL},
    {"UTF16BigEndian",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16BigEndian,
    "",
    JAVA_NULL},
    {"UTF16LittleEndian",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16LittleEndian,
    "",
    JAVA_NULL},
    {"UTF32",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32,
    "",
    JAVA_NULL},
    {"UTF32BigEndian",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32BigEndian,
    "",
    JAVA_NULL},
    {"UTF32LittleEndian",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32LittleEndian,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSStringEncoding();
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
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"convertIntToString",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
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
        org_xmlvm_iphone_NSStringEncoding_convertIntToString___int(((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSStringEncoding()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSStringEncoding);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSStringEncoding.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSStringEncoding.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSStringEncoding);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSStringEncoding.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSStringEncoding.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSStringEncoding();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSStringEncoding()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSStringEncoding.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSStringEncoding;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSStringEncoding.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSStringEncoding.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSStringEncoding.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ASCII = 1;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_NEXTSTEP = 2;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_JapaneseEUC = 3;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF8 = 4;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin1 = 5;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_Symbol = 6;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_NonLossyASCII = 7;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ShiftJIS = 8;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin2 = 9;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_Unicode = 10;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1251 = 11;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1252 = 12;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1253 = 13;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1254 = 14;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1250 = 15;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ISO2022JP = 21;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_MacOSRoman = 30;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16 = 10;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16BigEndian = -1879047936;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16LittleEndian = -1811939072;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32 = -1946156800;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32BigEndian = -1744830208;
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32LittleEndian = -1677721344;

    __TIB_org_xmlvm_iphone_NSStringEncoding.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringEncoding.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSStringEncoding.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSStringEncoding.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringEncoding.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSStringEncoding.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSStringEncoding.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSStringEncoding.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSStringEncoding = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSStringEncoding);
    __TIB_org_xmlvm_iphone_NSStringEncoding.clazz = __CLASS_org_xmlvm_iphone_NSStringEncoding;
    __TIB_org_xmlvm_iphone_NSStringEncoding.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSStringEncoding_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringEncoding);
    __CLASS_org_xmlvm_iphone_NSStringEncoding_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringEncoding_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSStringEncoding_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSStringEncoding_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSStringEncoding(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringEncoding(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSStringEncoding()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    org_xmlvm_iphone_NSStringEncoding* me = (org_xmlvm_iphone_NSStringEncoding*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSStringEncoding));
    me->tib = &__TIB_org_xmlvm_iphone_NSStringEncoding;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSStringEncoding(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSStringEncoding()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_ASCII()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_ASCII;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_ASCII(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ASCII = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_NEXTSTEP()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_NEXTSTEP;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_NEXTSTEP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_NEXTSTEP = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_JapaneseEUC()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_JapaneseEUC;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_JapaneseEUC(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_JapaneseEUC = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF8()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF8;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF8(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF8 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_ISOLatin1()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin1;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_ISOLatin1(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin1 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_Symbol()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_Symbol;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_Symbol(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_Symbol = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_NonLossyASCII()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_NonLossyASCII;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_NonLossyASCII(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_NonLossyASCII = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_ShiftJIS()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_ShiftJIS;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_ShiftJIS(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ShiftJIS = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_ISOLatin2()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin2;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_ISOLatin2(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ISOLatin2 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_Unicode()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_Unicode;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_Unicode(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_Unicode = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_WindowsCP1251()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1251;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_WindowsCP1251(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1251 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_WindowsCP1252()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1252;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_WindowsCP1252(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1252 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_WindowsCP1253()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1253;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_WindowsCP1253(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1253 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_WindowsCP1254()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1254;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_WindowsCP1254(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1254 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_WindowsCP1250()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1250;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_WindowsCP1250(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_WindowsCP1250 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_ISO2022JP()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_ISO2022JP;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_ISO2022JP(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_ISO2022JP = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_MacOSRoman()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_MacOSRoman;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_MacOSRoman(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_MacOSRoman = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF16()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF16(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF16BigEndian()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16BigEndian;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF16BigEndian(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16BigEndian = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF16LittleEndian()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16LittleEndian;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF16LittleEndian(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF16LittleEndian = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF32()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF32(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32 = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF32BigEndian()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32BigEndian;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF32BigEndian(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32BigEndian = v;
}

JAVA_INT org_xmlvm_iphone_NSStringEncoding_GET_UTF32LittleEndian()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    return _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32LittleEndian;
}

void org_xmlvm_iphone_NSStringEncoding_PUT_UTF32LittleEndian(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    _STATIC_org_xmlvm_iphone_NSStringEncoding_UTF32LittleEndian = v;
}

JAVA_OBJECT org_xmlvm_iphone_NSStringEncoding_convertIntToString___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringEncoding_convertIntToString___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

