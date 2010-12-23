
#include "java_lang_Math.h"

__TIB_DEFINITION_java_lang_Math __TIB_java_lang_Math = {
    0, // classInitialized
    "java.lang.Math", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_DOUBLE _STATIC_java_lang_Math_E;
static JAVA_DOUBLE _STATIC_java_lang_Math_PI;

void __INIT_java_lang_Math()
{
    __TIB_java_lang_Math.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_java_lang_Math.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_java_lang_Math.numImplementedInterfaces = 0;
    __TIB_java_lang_Math.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);
    _STATIC_java_lang_Math_E = 2.718281828459045;
    _STATIC_java_lang_Math_PI = 3.141592653589793;

    java_lang_Math___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_java_lang_Math]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_java_lang_Math()
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    java_lang_Math* me = (java_lang_Math*) XMLVM_MALLOC(sizeof(java_lang_Math));
    me->tib = &__TIB_java_lang_Math;
    //XMLVM_BEGIN_WRAPPER[__NEW_java_lang_Math]
    //XMLVM_END_WRAPPER
    return me;
}

void __DELETE_java_lang_Math(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_java_lang_Math]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_GET_E()
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    return _STATIC_java_lang_Math_E;
}

void java_lang_Math_PUT_E(JAVA_DOUBLE v)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    _STATIC_java_lang_Math_E = v;
}

JAVA_DOUBLE java_lang_Math_GET_PI()
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    return _STATIC_java_lang_Math_PI;
}

void java_lang_Math_PUT_PI(JAVA_DOUBLE v)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    _STATIC_java_lang_Math_PI = v;
}

void java_lang_Math___CLINIT_()
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math___CLINIT___]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_sin___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_sin___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_cos___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_cos___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_tan___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_tan___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_asin___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_asin___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_acos___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_acos___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_atan___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_atan___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_toRadians___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_toRadians___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_toDegrees___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_toDegrees___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_exp___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_exp___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_log___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_log___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_log10___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_log10___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_sqrt___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_sqrt___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_cbrt___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_cbrt___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_IEEEremainder___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_IEEEremainder___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_ceil___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_ceil___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_floor___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_floor___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_rint___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_rint___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_atan2___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_atan2___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_pow___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_pow___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_INT java_lang_Math_round___float(JAVA_FLOAT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_round___float]
    //XMLVM_END_WRAPPER
}

JAVA_LONG java_lang_Math_round___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_round___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_random__()
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_random__]
	return (double)rand()/RAND_MAX;
    //XMLVM_END_WRAPPER
}

JAVA_INT java_lang_Math_abs___int(JAVA_INT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_abs___int]
    //XMLVM_END_WRAPPER
}

JAVA_LONG java_lang_Math_abs___long(JAVA_LONG n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_abs___long]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_abs___float(JAVA_FLOAT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_abs___float]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_abs___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_abs___double]
    //XMLVM_END_WRAPPER
}

JAVA_INT java_lang_Math_max___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_max___int_int]
    //XMLVM_END_WRAPPER
}

JAVA_LONG java_lang_Math_max___long_long(JAVA_LONG n1, JAVA_LONG n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_max___long_long]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_max___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_max___float_float]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_max___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_max___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_INT java_lang_Math_min___int_int(JAVA_INT n1, JAVA_INT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_min___int_int]
    //XMLVM_END_WRAPPER
}

JAVA_LONG java_lang_Math_min___long_long(JAVA_LONG n1, JAVA_LONG n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_min___long_long]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_min___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_min___float_float]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_min___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_min___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_ulp___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_ulp___double]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_ulp___float(JAVA_FLOAT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_ulp___float]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_signum___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_signum___double]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_signum___float(JAVA_FLOAT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_signum___float]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_sinh___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_sinh___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_cosh___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_cosh___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_tanh___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_tanh___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_hypot___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_hypot___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_expm1___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_expm1___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_log1p___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_log1p___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_copySign___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_copySign___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_copySign___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_copySign___float_float]
    //XMLVM_END_WRAPPER
}

JAVA_INT java_lang_Math_getExponent___float(JAVA_FLOAT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_getExponent___float]
    //XMLVM_END_WRAPPER
}

JAVA_INT java_lang_Math_getExponent___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_getExponent___double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_nextAfter___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_nextAfter___double_double]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_nextAfter___float_double(JAVA_FLOAT n1, JAVA_DOUBLE n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_nextAfter___float_double]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_nextUp___double(JAVA_DOUBLE n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_nextUp___double]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_nextUp___float(JAVA_FLOAT n1)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_nextUp___float]
    //XMLVM_END_WRAPPER
}

JAVA_DOUBLE java_lang_Math_scalb___double_int(JAVA_DOUBLE n1, JAVA_INT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_scalb___double_int]
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT java_lang_Math_scalb___float_int(JAVA_FLOAT n1, JAVA_INT n2)
{
    if (!__TIB_java_lang_Math.classInitialized) __INIT_java_lang_Math();
    //XMLVM_BEGIN_WRAPPER[java_lang_Math_scalb___float_int]
    //XMLVM_END_WRAPPER
}

