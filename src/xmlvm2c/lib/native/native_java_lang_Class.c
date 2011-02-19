
#include "xmlvm.h"
#include "java_lang_Class.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION

#include "java_lang_reflect_Field.h"
#include "java_lang_reflect_Constructor.h"
#include "java_lang_reflect_Method.h"
#include "org_xmlvm_runtime_XMLVMArray.h"
#include "java_lang_ClassNotFoundException.h"
#include "xmlvm-util.h"


__TIB_DEFINITION_boolean __TIB_boolean;
__TIB_DEFINITION_byte    __TIB_byte;
__TIB_DEFINITION_char    __TIB_char;
__TIB_DEFINITION_short   __TIB_short;
__TIB_DEFINITION_int     __TIB_int;
__TIB_DEFINITION_long    __TIB_long;
__TIB_DEFINITION_float   __TIB_float;
__TIB_DEFINITION_double  __TIB_double;

JAVA_OBJECT __CLASS_boolean;
JAVA_OBJECT __CLASS_byte;
JAVA_OBJECT __CLASS_char;
JAVA_OBJECT __CLASS_short;
JAVA_OBJECT __CLASS_int;
JAVA_OBJECT __CLASS_long;
JAVA_OBJECT __CLASS_float;
JAVA_OBJECT __CLASS_double;


JAVA_OBJECT __CLASS_boolean_ARRAYTYPE;
JAVA_OBJECT __CLASS_byte_ARRAYTYPE;
JAVA_OBJECT __CLASS_char_ARRAYTYPE;
JAVA_OBJECT __CLASS_short_ARRAYTYPE;
JAVA_OBJECT __CLASS_int_ARRAYTYPE;
JAVA_OBJECT __CLASS_long_ARRAYTYPE;
JAVA_OBJECT __CLASS_float_ARRAYTYPE;
JAVA_OBJECT __CLASS_double_ARRAYTYPE;

JAVA_OBJECT __CLASS_boolean_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_byte_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_char_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_short_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_int_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_long_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_float_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_double_ARRAYTYPE_ARRAYTYPE;
JAVA_OBJECT __CLASS_java_lang_Object_ARRAYTYPE_ARRAYTYPE;


void init_primitive_class(void* clazz, const char* name)
{
    __TIB_DEFINITION_TEMPLATE* c = (__TIB_DEFINITION_TEMPLATE*) clazz;
    //TODO who is initializing this class?
    c->classInitialized = 1;
    c->className = name;
    c->extends = (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Class;
    c->flags = XMLVM_TYPE_PRIMITIVE;
    XMLVM_MEMCPY(c->vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
}

void __INIT_boolean()
{
    init_primitive_class(&__TIB_boolean, "boolean");
}

void __INIT_byte()
{
    init_primitive_class(&__TIB_byte, "byte");
}

void __INIT_char()
{
    init_primitive_class(&__TIB_char, "char");
}

void __INIT_short()
{
    init_primitive_class(&__TIB_short, "short");
}

void __INIT_int()
{
    init_primitive_class(&__TIB_int, "int");
}

void __INIT_long()
{
    init_primitive_class(&__TIB_long, "long");
}

void __INIT_float()
{
    init_primitive_class(&__TIB_float, "float");
}

void __INIT_double()
{
    init_primitive_class(&__TIB_double, "double");
}

    
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_Class_initNativeLayer__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_initNativeLayer__]
    __INIT_boolean();
    __INIT_byte();
    __INIT_char();
    __INIT_short();
    __INIT_int();
    __INIT_long();
    __INIT_float();
    __INIT_double();
    
    __CLASS_boolean = XMLVM_CREATE_CLASS_OBJECT(&__TIB_boolean);
    __CLASS_byte = XMLVM_CREATE_CLASS_OBJECT(&__TIB_byte);
    __CLASS_char = XMLVM_CREATE_CLASS_OBJECT(&__TIB_char);
    __CLASS_short = XMLVM_CREATE_CLASS_OBJECT(&__TIB_short);
    __CLASS_int = XMLVM_CREATE_CLASS_OBJECT(&__TIB_int);
    __CLASS_long = XMLVM_CREATE_CLASS_OBJECT(&__TIB_long);
    __CLASS_float = XMLVM_CREATE_CLASS_OBJECT(&__TIB_float);
    __CLASS_double = XMLVM_CREATE_CLASS_OBJECT(&__TIB_double);

    __CLASS_boolean_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_boolean, 1);
    __CLASS_byte_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_byte, 1);
    __CLASS_char_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_char, 1);
    __CLASS_short_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_short, 1);
    __CLASS_int_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_int, 1);
    __CLASS_long_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_long, 1);
    __CLASS_float_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_float, 1);
    __CLASS_double_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_double, 1);

    __CLASS_boolean_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_boolean_ARRAYTYPE, 2);
    __CLASS_byte_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_byte_ARRAYTYPE, 2);
    __CLASS_char_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_char_ARRAYTYPE, 2);
    __CLASS_short_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_short_ARRAYTYPE, 2);
    __CLASS_int_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_int_ARRAYTYPE, 2);
    __CLASS_long_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_long_ARRAYTYPE, 2);
    __CLASS_float_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_float_ARRAYTYPE, 2);
    __CLASS_double_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_double_ARRAYTYPE, 2);

    __CLASS_java_lang_Object_ARRAYTYPE_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_java_lang_Object_ARRAYTYPE, 2);
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getStackClasses___int_boolean(JAVA_INT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getStackClasses___int_boolean]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_forName___java_lang_String(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_forName___java_lang_String]
    static JAVA_OBJECT classMap = JAVA_NULL;
    if (classMap == JAVA_NULL) {
        classMap = XMLVMUtil_NEW_HashMap();
    }
    java_lang_Class* clazz = XMLVMUtil_HashMap_get(classMap, n1);
    if (clazz != JAVA_NULL) {
        return clazz;
    }
    int i = 0;
    __TIB_DEFINITION_TEMPLATE* tib;
    for (i = 0; i < __xmlvm_num_tib; i++) {
        tib = __xmlvm_tib_list[i];
        if (xmlvm_java_string_cmp(n1, tib->className)) {
            break;
        }
    }
    if (i == __xmlvm_num_tib) {
        // Class not found
        xmlvm_exception = __NEW_java_lang_ClassNotFoundException();
        java_lang_ClassNotFoundException___INIT___(xmlvm_exception);
        XMLVM_LONGJMP(xmlvm_exception_env);
    }
    if (!tib->classInitialized) {
        Func_V initFunc = tib->classInitializer;
        initFunc();
    }
    clazz = tib->clazz;
    XMLVMUtil_HashMap_put(classMap, n1, clazz);
    return clazz;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_forName___java_lang_String_boolean_java_lang_ClassLoader(JAVA_OBJECT n1, JAVA_BOOLEAN n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_forName___java_lang_String_boolean_java_lang_ClassLoader]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getClasses__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getClasses__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_lang_Class_verify__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_verify__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getAnnotation___java_lang_Class(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getAnnotation___java_lang_Class]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getAnnotations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getAnnotations__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getCanonicalName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getCanonicalName__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getClassLoader__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getClassLoader__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getClassLoaderImpl__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getClassLoaderImpl__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getComponentType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getComponentType__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    if ((tib->flags & XMLVM_TYPE_ARRAY) == 0) {
        // This is not an array
        return JAVA_NULL;
    }
    return tib->baseType;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getConstructors__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getConstructors__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaredAnnotations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaredAnnotations__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaredClasses__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaredClasses__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaredConstructors__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaredConstructors__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    int numConstructors = tib->numDeclaredConstructors;
    Func_OOO dispatcher = tib->constructorDispatcherFunc;
    if (!__TIB_java_lang_reflect_Constructor.classInitialized) __INIT_java_lang_reflect_Constructor();
    org_xmlvm_runtime_XMLVMArray* constructors = XMLVMArray_createSingleDimension(__CLASS_java_lang_reflect_Constructor_ARRAYTYPE, numConstructors);
    JAVA_ARRAY_OBJECT* constructorArray = (JAVA_ARRAY_OBJECT*) constructors->fields.org_xmlvm_runtime_XMLVMArray.array_;
    JAVA_INT slot = 0;
    for (slot = 0; slot < numConstructors; slot++) {
        java_lang_reflect_Constructor* constructor = __NEW_java_lang_reflect_Constructor();
        XMLVM_CONSTRUCTOR_REFLECTION_DATA* currentConstructor = (tib->declaredConstructors) + slot;
        int numParameters = currentConstructor->numParameterTypes;
        org_xmlvm_runtime_XMLVMArray* parameters = XMLVMArray_createSingleDimension(__CLASS_java_lang_Class_ARRAYTYPE, numParameters);
        JAVA_ARRAY_OBJECT* parameterArray = (JAVA_ARRAY_OBJECT*) parameters->fields.org_xmlvm_runtime_XMLVMArray.array_;
        int j = 0;
        JAVA_OBJECT** paramTypes = currentConstructor->parameterTypes;
        for (j = 0; j < numParameters; j++) {
            parameterArray[j] = *(paramTypes[j]);
        }            
        JAVA_OBJECT*  checkedExceptions = JAVA_NULL;
        int          numCheckedExceptions = 0;
        int          modifiers = 0;
        java_lang_String* signature = xmlvm_create_java_string(currentConstructor->signature);
        JAVA_OBJECT  annotations = JAVA_NULL;
        JAVA_OBJECT  parameterAnnotations = JAVA_NULL;
        java_lang_reflect_Constructor___INIT____java_lang_Class_java_lang_Class_ARRAYTYPE_java_lang_Class_ARRAYTYPE_int_java_lang_Object_int_java_lang_String_byte_ARRAYTYPE_byte_ARRAYTYPE(constructor, tib->clazz, parameters, checkedExceptions, modifiers, dispatcher, slot, signature, annotations, parameterAnnotations);
        constructorArray[slot] = constructor;
    }
    return constructors;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaredField___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaredField___java_lang_String]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaredFields__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaredFields__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    int numFields = tib->numDeclaredFields;
    if (!__TIB_java_lang_reflect_Field.classInitialized) __INIT_java_lang_reflect_Field();
    org_xmlvm_runtime_XMLVMArray* fields = XMLVMArray_createSingleDimension(__CLASS_java_lang_reflect_Field_ARRAYTYPE, numFields);
    JAVA_ARRAY_OBJECT* fieldsArray = (JAVA_ARRAY_OBJECT*) fields->fields.org_xmlvm_runtime_XMLVMArray.array_;
    int i = 0;
    for (i = 0; i < numFields; i++) {
        java_lang_reflect_Field* field = __NEW_java_lang_reflect_Field();
        XMLVM_FIELD_REFLECTION_DATA* currentField = (tib->declaredFields) + i;
        java_lang_Class* declaringClass = tib->clazz;
        java_lang_String* name = xmlvm_create_java_string(currentField->name);
        java_lang_Class* type = *(currentField->type);
        JAVA_INT modifiers = currentField->modifiers;
        JAVA_INT offset = currentField->offset;
        JAVA_OBJECT* address = currentField->address;
        java_lang_String* signature = xmlvm_create_java_string(currentField->signature);
        org_xmlvm_runtime_XMLVMArray* annotations = currentField->annotations;
        java_lang_reflect_Field___INIT____java_lang_Class_java_lang_String_java_lang_Class_int_int_java_lang_Object_java_lang_String_byte_ARRAYTYPE(field, declaringClass, name, type, modifiers, offset, address, signature, annotations);                                                                                                                     
        fieldsArray[i] = field;
    }
    return fields;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaredMethods__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaredMethods__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    int numMethods = tib->numDeclaredMethods;
    Func_OOOO dispatcher = tib->methodDispatcherFunc;
    if (!__TIB_java_lang_reflect_Method.classInitialized) __INIT_java_lang_reflect_Method();
    org_xmlvm_runtime_XMLVMArray* methods = XMLVMArray_createSingleDimension(__CLASS_java_lang_reflect_Method_ARRAYTYPE, numMethods);
    JAVA_ARRAY_OBJECT* methodArray = (JAVA_ARRAY_OBJECT*) methods->fields.org_xmlvm_runtime_XMLVMArray.array_;
    JAVA_INT slot = 0;
    for (slot = 0; slot < numMethods; slot++) {
        java_lang_reflect_Method* method = __NEW_java_lang_reflect_Method();
        XMLVM_METHOD_REFLECTION_DATA* currentMethod = (tib->declaredMethods) + slot;
        int numParameters = currentMethod->numParameterTypes;
        org_xmlvm_runtime_XMLVMArray* parameters = XMLVMArray_createSingleDimension(__CLASS_java_lang_Class_ARRAYTYPE, numParameters);
        JAVA_ARRAY_OBJECT* parameterArray = (JAVA_ARRAY_OBJECT*) parameters->fields.org_xmlvm_runtime_XMLVMArray.array_;
        int j = 0;
        JAVA_OBJECT** paramTypes = currentMethod->parameterTypes;
        for (j = 0; j < numParameters; j++) {
            parameterArray[j] = *(paramTypes[j]);
        }
        java_lang_String* name = xmlvm_create_java_string(currentMethod->name);
        JAVA_OBJECT*  checkedExceptions = JAVA_NULL;
        int          numCheckedExceptions = 0;
        int          modifiers = 0;
        java_lang_String* signature = xmlvm_create_java_string(currentMethod->signature);
        JAVA_OBJECT  annotations = JAVA_NULL;
        JAVA_OBJECT  parameterAnnotations = JAVA_NULL;
        java_lang_reflect_Method___INIT____java_lang_String_java_lang_Class_java_lang_Class_ARRAYTYPE_java_lang_Class_ARRAYTYPE_int_java_lang_Object_int_java_lang_String_byte_ARRAYTYPE_byte_ARRAYTYPE(method, name, tib->clazz, parameters, checkedExceptions, modifiers, dispatcher, slot, signature, annotations, parameterAnnotations);
        methodArray[slot] = method;
    }
    return methods;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getDeclaringClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getDeclaringClass__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getEnclosingClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getEnclosingClass__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getEnclosingConstructor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getEnclosingConstructor__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getEnclosingMethod__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getEnclosingMethod__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getEnumConstants__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getEnumConstants__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getField___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getField___java_lang_String]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getFields__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getFields__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getGenericInterfaces__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getGenericInterfaces__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getGenericSuperclass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getGenericSuperclass__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getInterfaces__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getInterfaces__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_Class_getModifiers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getModifiers__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getName__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    return xmlvm_create_java_string(tib->className);
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getSimpleName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getSimpleName__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getProtectionDomain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getProtectionDomain__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getPDImpl__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getPDImpl__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getResource___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getResource___java_lang_String]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getResourceAsStream___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getResourceAsStream___java_lang_String]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getSigners__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getSigners__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getSuperclass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getSuperclass__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    __TIB_DEFINITION_TEMPLATE* baseTIP = tib->extends;
    if (baseTIP == JAVA_NULL) {
        return JAVA_NULL;
    }
    return baseTIP->clazz;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getTypeParameters__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getTypeParameters__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isAnnotation__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isAnnotation__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isAnnotationPresent___java_lang_Class(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isAnnotationPresent___java_lang_Class]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isAnonymousClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isAnonymousClass__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isArray__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isArray__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    return (tib->flags & XMLVM_TYPE_ARRAY) != 0;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isAssignableFrom___java_lang_Class(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isAssignableFrom___java_lang_Class]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isEnum__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isEnum__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    return (tib->flags & XMLVM_TYPE_ENUM) != 0;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isInstance___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isInstance___java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isInterface__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isInterface__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    return (tib->flags & XMLVM_TYPE_INTERFACE) != 0;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isLocalClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isLocalClass__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isMemberClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isMemberClass__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isPrimitive__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isPrimitive__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    return (tib->flags & XMLVM_TYPE_PRIMITIVE) != 0;
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_isSynthetic__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_isSynthetic__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_newInstance__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_newInstance__]
    java_lang_Class* thiz = (java_lang_Class*) me;
    __TIB_DEFINITION_TEMPLATE* tib = (__TIB_DEFINITION_TEMPLATE*) thiz->fields.java_lang_Class.tib_;
    Func_O func = tib->newInstanceFunc;
    return (*func)();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_toString__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_getPackage__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_getPackage__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_Class_desiredAssertionStatus__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_desiredAssertionStatus__]
    return 0;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_asSubclass___java_lang_Class(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_asSubclass___java_lang_Class]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_Class_cast___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_Class_cast___java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_Class()
{
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getClasses__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getClasses__] = 
        (VTABLE_PTR) java_lang_Class_getClasses__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_verify__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_verify__] = 
        (VTABLE_PTR) java_lang_Class_verify__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getAnnotation___java_lang_Class
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getAnnotation___java_lang_Class] = 
        (VTABLE_PTR) java_lang_Class_getAnnotation___java_lang_Class;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getAnnotations__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getAnnotations__] = 
        (VTABLE_PTR) java_lang_Class_getAnnotations__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getCanonicalName__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getCanonicalName__] = 
        (VTABLE_PTR) java_lang_Class_getCanonicalName__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getClassLoader__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getClassLoader__] = 
        (VTABLE_PTR) java_lang_Class_getClassLoader__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getClassLoaderImpl__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getClassLoaderImpl__] = 
        (VTABLE_PTR) java_lang_Class_getClassLoaderImpl__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getComponentType__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getComponentType__] = 
        (VTABLE_PTR) java_lang_Class_getComponentType__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getConstructors__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getConstructors__] = 
        (VTABLE_PTR) java_lang_Class_getConstructors__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredAnnotations__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredAnnotations__] = 
        (VTABLE_PTR) java_lang_Class_getDeclaredAnnotations__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredClasses__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredClasses__] = 
        (VTABLE_PTR) java_lang_Class_getDeclaredClasses__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredConstructors__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredConstructors__] = 
        (VTABLE_PTR) java_lang_Class_getDeclaredConstructors__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredField___java_lang_String
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredField___java_lang_String] = 
        (VTABLE_PTR) java_lang_Class_getDeclaredField___java_lang_String;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredFields__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredFields__] = 
        (VTABLE_PTR) java_lang_Class_getDeclaredFields__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredMethods__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaredMethods__] = 
        (VTABLE_PTR) java_lang_Class_getDeclaredMethods__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getDeclaringClass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getDeclaringClass__] = 
        (VTABLE_PTR) java_lang_Class_getDeclaringClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getEnclosingClass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getEnclosingClass__] = 
        (VTABLE_PTR) java_lang_Class_getEnclosingClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getEnclosingConstructor__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getEnclosingConstructor__] = 
        (VTABLE_PTR) java_lang_Class_getEnclosingConstructor__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getEnclosingMethod__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getEnclosingMethod__] = 
        (VTABLE_PTR) java_lang_Class_getEnclosingMethod__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getEnumConstants__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getEnumConstants__] = 
        (VTABLE_PTR) java_lang_Class_getEnumConstants__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getField___java_lang_String
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getField___java_lang_String] = 
        (VTABLE_PTR) java_lang_Class_getField___java_lang_String;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getFields__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getFields__] = 
        (VTABLE_PTR) java_lang_Class_getFields__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getGenericInterfaces__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getGenericInterfaces__] = 
        (VTABLE_PTR) java_lang_Class_getGenericInterfaces__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getGenericSuperclass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getGenericSuperclass__] = 
        (VTABLE_PTR) java_lang_Class_getGenericSuperclass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getInterfaces__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getInterfaces__] = 
        (VTABLE_PTR) java_lang_Class_getInterfaces__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getModifiers__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getModifiers__] = 
        (VTABLE_PTR) java_lang_Class_getModifiers__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getName__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getName__] = 
        (VTABLE_PTR) java_lang_Class_getName__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getSimpleName__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getSimpleName__] = 
        (VTABLE_PTR) java_lang_Class_getSimpleName__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getProtectionDomain__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getProtectionDomain__] = 
        (VTABLE_PTR) java_lang_Class_getProtectionDomain__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getPDImpl__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getPDImpl__] = 
        (VTABLE_PTR) java_lang_Class_getPDImpl__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getResource___java_lang_String
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getResource___java_lang_String] = 
        (VTABLE_PTR) java_lang_Class_getResource___java_lang_String;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getResourceAsStream___java_lang_String
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getResourceAsStream___java_lang_String] = 
        (VTABLE_PTR) java_lang_Class_getResourceAsStream___java_lang_String;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getSigners__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getSigners__] = 
        (VTABLE_PTR) java_lang_Class_getSigners__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getSuperclass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getSuperclass__] = 
        (VTABLE_PTR) java_lang_Class_getSuperclass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getTypeParameters__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getTypeParameters__] = 
        (VTABLE_PTR) java_lang_Class_getTypeParameters__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isAnnotation__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isAnnotation__] = 
        (VTABLE_PTR) java_lang_Class_isAnnotation__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isAnnotationPresent___java_lang_Class
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isAnnotationPresent___java_lang_Class] = 
        (VTABLE_PTR) java_lang_Class_isAnnotationPresent___java_lang_Class;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isAnonymousClass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isAnonymousClass__] = 
        (VTABLE_PTR) java_lang_Class_isAnonymousClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isArray__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isArray__] = 
        (VTABLE_PTR) java_lang_Class_isArray__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isAssignableFrom___java_lang_Class
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isAssignableFrom___java_lang_Class] = 
        (VTABLE_PTR) java_lang_Class_isAssignableFrom___java_lang_Class;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isEnum__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isEnum__] = 
        (VTABLE_PTR) java_lang_Class_isEnum__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isInstance___java_lang_Object
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isInstance___java_lang_Object] = 
        (VTABLE_PTR) java_lang_Class_isInstance___java_lang_Object;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isInterface__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isInterface__] = 
        (VTABLE_PTR) java_lang_Class_isInterface__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isLocalClass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isLocalClass__] = 
        (VTABLE_PTR) java_lang_Class_isLocalClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isMemberClass__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isMemberClass__] = 
        (VTABLE_PTR) java_lang_Class_isMemberClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isPrimitive__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isPrimitive__] = 
        (VTABLE_PTR) java_lang_Class_isPrimitive__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_isSynthetic__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_isSynthetic__] = 
        (VTABLE_PTR) java_lang_Class_isSynthetic__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_newInstance__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_newInstance__] = 
        (VTABLE_PTR) java_lang_Class_newInstance__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_toString__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_toString__] = 
        (VTABLE_PTR) java_lang_Class_toString__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_getPackage__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_getPackage__] = 
        (VTABLE_PTR) java_lang_Class_getPackage__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_desiredAssertionStatus__
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_desiredAssertionStatus__] = 
        (VTABLE_PTR) java_lang_Class_desiredAssertionStatus__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_asSubclass___java_lang_Class
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_asSubclass___java_lang_Class] = 
        (VTABLE_PTR) java_lang_Class_asSubclass___java_lang_Class;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_Class_cast___java_lang_Object
    __TIB_java_lang_Class.vtable[XMLVM_VTABLE_IDX_java_lang_Class_cast___java_lang_Object] = 
        (VTABLE_PTR) java_lang_Class_cast___java_lang_Object;
#endif
}
