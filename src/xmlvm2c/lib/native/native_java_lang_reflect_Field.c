
#include "java_lang_reflect_Field.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include "java_lang_Boolean.h"
#include "java_lang_Byte.h"
#include "java_lang_Character.h"
#include "java_lang_Short.h"
#include "java_lang_Integer.h"
#include "java_lang_Long.h"
#include "java_lang_Double.h"
#include "java_lang_Float.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_lang_reflect_Field_get___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Field_get___java_lang_Object]
    java_lang_reflect_Field* thiz = (java_lang_reflect_Field*) me;
    JAVA_OBJECT type = thiz->fields.java_lang_reflect_Field.type_;
    char* valuePtr;
    if (thiz->fields.java_lang_reflect_Field.modifiers_ & java_lang_reflect_Modifier_STATIC) {
        valuePtr = (char*) thiz->fields.java_lang_reflect_Field.address_;
    } else {
        valuePtr = ((char*) n1) + thiz->fields.java_lang_reflect_Field.offset_;
    }
    JAVA_OBJECT obj;
    if (type == __CLASS_boolean_TYPE) {
        JAVA_BOOLEAN value = *((JAVA_BOOLEAN*) valuePtr);
        obj = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(obj, value);
    } else if (type == __CLASS_byte_TYPE) {
        JAVA_BYTE value = *((JAVA_BYTE*) valuePtr);
        obj = __NEW_java_lang_Byte();
        java_lang_Byte___INIT____byte(obj, value);
    } else if (type == __CLASS_char_TYPE) {
        JAVA_CHAR value = *((JAVA_CHAR*) valuePtr);
        obj = __NEW_java_lang_Character();
        java_lang_Character___INIT____char(obj, value);
    } else if (type == __CLASS_short_TYPE) {
        JAVA_SHORT value = *((JAVA_SHORT*) valuePtr);
        obj = __NEW_java_lang_Short();
        java_lang_Short___INIT____short(obj, value);
    } else if (type == __CLASS_int_TYPE) {
        JAVA_INT value = *((JAVA_INT*) valuePtr);
        obj = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(obj, value);
    } else if (type == __CLASS_long_TYPE) {
        JAVA_LONG value = *((JAVA_LONG*) valuePtr);
        obj = __NEW_java_lang_Long();
        java_lang_Long___INIT____long(obj, value);
    } else if (type == __CLASS_float_TYPE) {
        JAVA_FLOAT value = *((JAVA_FLOAT*) valuePtr);
        obj = __NEW_java_lang_Float();
        java_lang_Float___INIT____float(obj, value);
    } else if (type == __CLASS_double_TYPE) {
        JAVA_DOUBLE value = *((JAVA_DOUBLE*) valuePtr);
        obj = __NEW_java_lang_Double();
        java_lang_Double___INIT____double(obj, value);
    } else {
        // Has to be object type if it is not a primitive type
        obj = *((JAVA_OBJECT*) valuePtr);
    }
    return obj;
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_reflect_Field()
{
    __TIB_java_lang_reflect_Field.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Field_get___java_lang_Object] = 
        (VTABLE_PTR) java_lang_reflect_Field_get___java_lang_Object;
}
