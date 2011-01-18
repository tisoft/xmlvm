
#include "xmlvm.h"
#include "org_xmlvm_runtime_XMLVMArray.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION

#include "java_lang_Class.h"


org_xmlvm_runtime_XMLVMArray* __NEW_XMLVMArray(JAVA_OBJECT type, JAVA_INT length, JAVA_OBJECT data)
{
    org_xmlvm_runtime_XMLVMArray* array = __NEW_org_xmlvm_runtime_XMLVMArray();
    org_xmlvm_runtime_XMLVMArray___INIT____java_lang_Class_int_java_lang_Object(array, type, length, data);
    return array;
}

int XMLVMArray_sizeOfBaseTypeInBytes(JAVA_OBJECT type)
{
    int sizeOfBaseType;
    
    if (type == __CLASS_byte_ARRAYTYPE || type == __CLASS_boolean_ARRAYTYPE) {
        sizeOfBaseType = sizeof(JAVA_ARRAY_BYTE);
    } else if (type == __CLASS_char_ARRAYTYPE || type == __CLASS_short_ARRAYTYPE) {
        sizeOfBaseType = sizeof(JAVA_ARRAY_SHORT);
    } else if (type == __CLASS_int_ARRAYTYPE) {
        sizeOfBaseType = sizeof(JAVA_ARRAY_INT);
    } else if (type == __CLASS_float_ARRAYTYPE) {
        sizeOfBaseType = sizeof(JAVA_ARRAY_FLOAT);
    } else if (type == __CLASS_double_ARRAYTYPE) {
        sizeOfBaseType = sizeof(JAVA_ARRAY_DOUBLE);
    } else if (type == __CLASS_long_ARRAYTYPE) {
        sizeOfBaseType = sizeof(JAVA_ARRAY_LONG);
    } else {
        sizeOfBaseType = sizeof(void*);
    }
    
    return sizeOfBaseType;
}

static org_xmlvm_runtime_XMLVMArray* XMLVMArray_createMultiDimensionsWithCount(JAVA_OBJECT type, JAVA_ARRAY_INT* dim, int count)
{
    JAVA_ARRAY_INT dimensions = *dim;
    org_xmlvm_runtime_XMLVMArray* slice;
    int i;
    dim++;
    count--;
    if (count == 0) {
        return XMLVMArray_createSingleDimension(type, dimensions);
    }
    slice = XMLVMArray_createSingleDimension(type, dimensions);
    JAVA_ARRAY_OBJECT* sliceData = (JAVA_ARRAY_OBJECT*) slice->fields.org_xmlvm_runtime_XMLVMArray.array_;
    // Get base type
    java_lang_Class* typeClass = (java_lang_Class*) type;
    __TIB_DEFINITION_TEMPLATE* typeTIB = (__TIB_DEFINITION_TEMPLATE*) typeClass->fields.java_lang_Class.tib_;
    JAVA_OBJECT baseType = typeTIB->baseType;
    for (i = 0; i < dimensions; i++) {
        //TODO should 'type' be baseType of this type?
        sliceData[i] = XMLVMArray_createMultiDimensionsWithCount(baseType, dim, count);
    }
    return slice;
}

//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT org_xmlvm_runtime_XMLVMArray_createSingleDimension___java_lang_Class_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_XMLVMArray_createSingleDimension___java_lang_Class_int]
    JAVA_OBJECT type = n1;
    JAVA_INT size = n2;
    int sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(type);
    JAVA_OBJECT data = XMLVM_MALLOC(sizeOfBaseType * size);
    XMLVM_BZERO(data, sizeOfBaseType * size);
    return org_xmlvm_runtime_XMLVMArray_createSingleDimensionWithData___java_lang_Class_int_java_lang_Object(type, size, data);
    //XMLVM_END_NATIVE
}

JAVA_OBJECT org_xmlvm_runtime_XMLVMArray_createSingleDimensionWithData___java_lang_Class_int_java_lang_Object(JAVA_OBJECT n1, JAVA_INT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_XMLVMArray_createSingleDimensionWithData___java_lang_Class_int_java_lang_Object]
    org_xmlvm_runtime_XMLVMArray* array = __NEW_org_xmlvm_runtime_XMLVMArray();
    org_xmlvm_runtime_XMLVMArray___INIT____java_lang_Class_int_java_lang_Object(array, n1, n2, n3);
    java_lang_Class* type = (java_lang_Class*) n1;
    JAVA_OBJECT newTIB = type->fields.java_lang_Class.tib_;
    array->tib = (__TIB_DEFINITION_org_xmlvm_runtime_XMLVMArray*) newTIB;
    return array;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT org_xmlvm_runtime_XMLVMArray_createMultiDimensions___java_lang_Class_org_xmlvm_runtime_XMLVMArray(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_XMLVMArray_createMultiDimensions___java_lang_Class_org_xmlvm_runtime_XMLVMArray]
    org_xmlvm_runtime_XMLVMArray* dimArray = (org_xmlvm_runtime_XMLVMArray*) n2;
    if (dimArray->fields.org_xmlvm_runtime_XMLVMArray.type_ != __CLASS_int_ARRAYTYPE) {
        XMLVM_INTERNAL_ERROR();
    }
    int count = dimArray->fields.org_xmlvm_runtime_XMLVMArray.length_;
    JAVA_ARRAY_INT* data = (JAVA_ARRAY_INT*) dimArray->fields.org_xmlvm_runtime_XMLVMArray.array_;
    return XMLVMArray_createMultiDimensionsWithCount(n1, data, count);
    //XMLVM_END_NATIVE
}

void org_xmlvm_runtime_XMLVMArray_fillArray___org_xmlvm_runtime_XMLVMArray_java_lang_Object(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_XMLVMArray_fillArray___org_xmlvm_runtime_XMLVMArray_java_lang_Object]
    org_xmlvm_runtime_XMLVMArray* array = (org_xmlvm_runtime_XMLVMArray*) n1;
    int sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(array->fields.org_xmlvm_runtime_XMLVMArray.type_);
    int n = sizeOfBaseType * array->fields.org_xmlvm_runtime_XMLVMArray.length_;
    XMLVM_MEMCPY(array->fields.org_xmlvm_runtime_XMLVMArray.array_, n2, n);
    //XMLVM_END_NATIVE
}

JAVA_OBJECT org_xmlvm_runtime_XMLVMArray_clone__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[org_xmlvm_runtime_XMLVMArray_clone__]
    org_xmlvm_runtime_XMLVMArray* thiz = (org_xmlvm_runtime_XMLVMArray*) me;
    JAVA_OBJECT type = thiz->fields.org_xmlvm_runtime_XMLVMArray.type_;
    JAVA_INT length = thiz->fields.org_xmlvm_runtime_XMLVMArray.length_;
    JAVA_OBJECT data = thiz->fields.org_xmlvm_runtime_XMLVMArray.array_;
    int sizeOfBaseType = XMLVMArray_sizeOfBaseTypeInBytes(type);
    int sizeOfArrayInBytes = sizeOfBaseType * length;
    JAVA_OBJECT copyData = XMLVM_MALLOC(sizeOfArrayInBytes);
    XMLVM_MEMCPY(copyData, data, sizeOfArrayInBytes);
    return XMLVMArray_createSingleDimensionWithData(type, length, copyData);
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_org_xmlvm_runtime_XMLVMArray()
{
#ifdef XMLVM_VTABLE_IDX_org_xmlvm_runtime_XMLVMArray_clone__
    __TIB_org_xmlvm_runtime_XMLVMArray.vtable[XMLVM_VTABLE_IDX_org_xmlvm_runtime_XMLVMArray_clone__] = 
        (VTABLE_PTR) org_xmlvm_runtime_XMLVMArray_clone__;
#endif
}
