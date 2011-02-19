
#include "xmlvm.h"
#include "java_lang_reflect_Array.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION

#include "java_lang_Class.h"

//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_lang_reflect_Array_multiNewArrayImpl___java_lang_Class_int_int_ARRAYTYPE(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_multiNewArrayImpl___java_lang_Class_int_int_ARRAYTYPE]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Array_newArrayImpl___java_lang_Class_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_newArrayImpl___java_lang_Class_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Array_get___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_get___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_reflect_Array_getBoolean___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getBoolean___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BYTE java_lang_reflect_Array_getByte___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getByte___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_CHAR java_lang_reflect_Array_getChar___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getChar___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_DOUBLE java_lang_reflect_Array_getDouble___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getDouble___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_FLOAT java_lang_reflect_Array_getFloat___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getFloat___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_reflect_Array_getInt___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getInt___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_reflect_Array_getLength___java_lang_Object(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getLength___java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_reflect_Array_getLong___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getLong___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_SHORT java_lang_reflect_Array_getShort___java_lang_Object_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_getShort___java_lang_Object_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Array_newInstance___java_lang_Class_int_ARRAYTYPE(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_newInstance___java_lang_Class_int_ARRAYTYPE]
    java_lang_Class* baseType = (java_lang_Class*) n1;
    __TIB_DEFINITION_TEMPLATE* baseTypeTIB = (__TIB_DEFINITION_TEMPLATE*) baseType->fields.java_lang_Class.tib_;
    JAVA_OBJECT arrayType = baseTypeTIB->arrayType;
    return XMLVMArray_createMultiDimensions(arrayType, n2);
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Array_newInstance___java_lang_Class_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_newInstance___java_lang_Class_int]
    java_lang_Class* baseType = (java_lang_Class*) n1;
    __TIB_DEFINITION_TEMPLATE* baseTypeTIB = (__TIB_DEFINITION_TEMPLATE*) baseType->fields.java_lang_Class.tib_;
    JAVA_OBJECT arrayType = baseTypeTIB->arrayType;
    return XMLVMArray_createSingleDimension(arrayType, n2);
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_set___java_lang_Object_int_java_lang_Object(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_set___java_lang_Object_int_java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setBoolean___java_lang_Object_int_boolean(JAVA_OBJECT n1, JAVA_INT n2, JAVA_BOOLEAN n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setBoolean___java_lang_Object_int_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setByte___java_lang_Object_int_byte(JAVA_OBJECT n1, JAVA_INT n2, JAVA_BYTE n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setByte___java_lang_Object_int_byte]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setChar___java_lang_Object_int_char(JAVA_OBJECT n1, JAVA_INT n2, JAVA_CHAR n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setChar___java_lang_Object_int_char]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setDouble___java_lang_Object_int_double(JAVA_OBJECT n1, JAVA_INT n2, JAVA_DOUBLE n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setDouble___java_lang_Object_int_double]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setFloat___java_lang_Object_int_float(JAVA_OBJECT n1, JAVA_INT n2, JAVA_FLOAT n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setFloat___java_lang_Object_int_float]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setInt___java_lang_Object_int_int(JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setInt___java_lang_Object_int_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setLong___java_lang_Object_int_long(JAVA_OBJECT n1, JAVA_INT n2, JAVA_LONG n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setLong___java_lang_Object_int_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_reflect_Array_setShort___java_lang_Object_int_short(JAVA_OBJECT n1, JAVA_INT n2, JAVA_SHORT n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Array_setShort___java_lang_Object_int_short]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

