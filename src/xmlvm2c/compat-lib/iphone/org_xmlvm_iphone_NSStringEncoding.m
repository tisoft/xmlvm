#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSStringEncoding.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSStringEncoding __TIB_org_xmlvm_iphone_NSStringEncoding = {
    0, // classInitialized
    "org.xmlvm.iphone.NSStringEncoding", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

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

void __INIT_org_xmlvm_iphone_NSStringEncoding()
{
    __TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSStringEncoding.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSStringEncoding;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSStringEncoding.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSStringEncoding.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSStringEncoding.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
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


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSStringEncoding(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSStringEncoding()
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    org_xmlvm_iphone_NSStringEncoding* me = (org_xmlvm_iphone_NSStringEncoding*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSStringEncoding));
    me->tib = &__TIB_org_xmlvm_iphone_NSStringEncoding;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSStringEncoding]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSStringEncoding()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSStringEncoding();
    org_xmlvm_iphone_NSStringEncoding___INIT___(me);
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

void org_xmlvm_iphone_NSStringEncoding___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringEncoding___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSStringEncoding_convertIntToString___int(JAVA_INT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSStringEncoding.classInitialized) __INIT_org_xmlvm_iphone_NSStringEncoding();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSStringEncoding_convertIntToString___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

