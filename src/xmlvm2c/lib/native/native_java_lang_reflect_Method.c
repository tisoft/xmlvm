
#include "xmlvm.h"
#include "java_lang_reflect_Method.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include "java_lang_Class.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_lang_reflect_Method_getTypeParameters__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getTypeParameters__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_toGenericString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_toGenericString__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getGenericParameterTypes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getGenericParameterTypes__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getGenericExceptionTypes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getGenericExceptionTypes__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getGenericReturnType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getGenericReturnType__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getParameterAnnotations__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getParameterAnnotations__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_reflect_Method_isVarArgs__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_isVarArgs__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_reflect_Method_isBridge__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_isBridge__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_reflect_Method_isSynthetic__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_isSynthetic__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getDefaultValue__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getDefaultValue__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN java_lang_reflect_Method_equals___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_equals___java_lang_Object]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getDeclaringClass__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getDeclaringClass__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getExceptionTypes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getExceptionTypes__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_reflect_Method_getModifiers__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getModifiers__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getName__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getName__]
    java_lang_reflect_Method* thiz = me;
    return thiz->fields.java_lang_reflect_Method.name_;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getParameterTypes__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getParameterTypes__]
    java_lang_reflect_Method* thiz = me;
    return thiz->fields.java_lang_reflect_Method.parameterTypes_;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_getReturnType__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_getReturnType__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_reflect_Method_hashCode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_hashCode__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_invoke___java_lang_Object_java_lang_Object_ARRAYTYPE(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_invoke___java_lang_Object_java_lang_Object_ARRAYTYPE]
    java_lang_reflect_Method* thiz = me;
    java_lang_Class* declaringClass = thiz->fields.java_lang_reflect_Method.clazz_;
    __TIB_DEFINITION_TEMPLATE* tib = declaringClass->fields.java_lang_Class.tib_;
    Func_OOOO dispatcher = tib->methodDispatcherFunc;
    return dispatcher(me, n1, n2);
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_reflect_Method_toString__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_NATIVE[java_lang_reflect_Method_toString__]
    xmlvm_unimplemented_native_method();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_java_lang_reflect_Method()
{
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getTypeParameters__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getTypeParameters__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getTypeParameters__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_toGenericString__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_toGenericString__] = 
        (VTABLE_PTR) java_lang_reflect_Method_toGenericString__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getGenericParameterTypes__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getGenericParameterTypes__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getGenericParameterTypes__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getGenericExceptionTypes__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getGenericExceptionTypes__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getGenericExceptionTypes__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getGenericReturnType__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getGenericReturnType__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getGenericReturnType__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getParameterAnnotations__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getParameterAnnotations__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getParameterAnnotations__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_isVarArgs__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_isVarArgs__] = 
        (VTABLE_PTR) java_lang_reflect_Method_isVarArgs__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_isBridge__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_isBridge__] = 
        (VTABLE_PTR) java_lang_reflect_Method_isBridge__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_isSynthetic__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_isSynthetic__] = 
        (VTABLE_PTR) java_lang_reflect_Method_isSynthetic__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getDefaultValue__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getDefaultValue__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getDefaultValue__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_equals___java_lang_Object
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_equals___java_lang_Object] = 
        (VTABLE_PTR) java_lang_reflect_Method_equals___java_lang_Object;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getDeclaringClass__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getDeclaringClass__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getDeclaringClass__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getExceptionTypes__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getExceptionTypes__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getExceptionTypes__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getModifiers__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getModifiers__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getModifiers__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getName__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getName__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getName__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getParameterTypes__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getParameterTypes__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getParameterTypes__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_getReturnType__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_getReturnType__] = 
        (VTABLE_PTR) java_lang_reflect_Method_getReturnType__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_hashCode__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_hashCode__] = 
        (VTABLE_PTR) java_lang_reflect_Method_hashCode__;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_invoke___java_lang_Object_java_lang_Object_ARRAYTYPE
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_invoke___java_lang_Object_java_lang_Object_ARRAYTYPE] = 
        (VTABLE_PTR) java_lang_reflect_Method_invoke___java_lang_Object_java_lang_Object_ARRAYTYPE;
#endif
#ifdef XMLVM_VTABLE_IDX_java_lang_reflect_Method_toString__
    __TIB_java_lang_reflect_Method.vtable[XMLVM_VTABLE_IDX_java_lang_reflect_Method_toString__] = 
        (VTABLE_PTR) java_lang_reflect_Method_toString__;
#endif
}
