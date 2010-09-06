#ifndef __JAVA_LANG_MATH__
#define __JAVA_LANG_MATH__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for java.lang.Math
XMLVM_DEFINE_CLASS(java_lang_Math, 11)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_java_lang_Math
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_java_lang_Math \
    __INSTANCE_MEMBERS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_MEMBERS_java_lang_Math \
    } java_lang_Math

struct java_lang_Math {
    __CLASS_DEFINITION_java_lang_Math* __class;
    __INSTANCE_MEMBERS_java_lang_Math;
};
#ifndef XMLVM_FORWARD_DECL_java_lang_Math
#define XMLVM_FORWARD_DECL_java_lang_Math
typedef struct java_lang_Math java_lang_Math;
#endif

#define XMLVM_VTABLE_SIZE_java_lang_Math 11

void __INIT_java_lang_Math();
JAVA_OBJECT __NEW_java_lang_Math();
JAVA_DOUBLE java_lang_Math_GET_E();
void java_lang_Math_PUT_E(JAVA_DOUBLE v);
JAVA_DOUBLE java_lang_Math_GET_PI();
void java_lang_Math_PUT_PI(JAVA_DOUBLE v);
void java_lang_Math___CLINIT_();
JAVA_DOUBLE java_lang_Math_sin___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_cos___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_tan___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_asin___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_acos___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_atan___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_toRadians___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_toDegrees___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_exp___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_log___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_log10___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_sqrt___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_cbrt___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_IEEEremainder___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_DOUBLE java_lang_Math_ceil___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_floor___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_rint___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_atan2___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_DOUBLE java_lang_Math_pow___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_INT java_lang_Math_round___float(JAVA_FLOAT n1);
JAVA_LONG java_lang_Math_round___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_random__();
JAVA_INT java_lang_Math_abs___int(JAVA_INT n1);
JAVA_LONG java_lang_Math_abs___long(JAVA_LONG n1);
JAVA_FLOAT java_lang_Math_abs___float(JAVA_FLOAT n1);
JAVA_DOUBLE java_lang_Math_abs___double(JAVA_DOUBLE n1);
JAVA_INT java_lang_Math_max___int_int(JAVA_INT n1, JAVA_INT n2);
JAVA_LONG java_lang_Math_max___long_long(JAVA_LONG n1, JAVA_LONG n2);
JAVA_FLOAT java_lang_Math_max___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2);
JAVA_DOUBLE java_lang_Math_max___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_INT java_lang_Math_min___int_int(JAVA_INT n1, JAVA_INT n2);
JAVA_LONG java_lang_Math_min___long_long(JAVA_LONG n1, JAVA_LONG n2);
JAVA_FLOAT java_lang_Math_min___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2);
JAVA_DOUBLE java_lang_Math_min___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_DOUBLE java_lang_Math_ulp___double(JAVA_DOUBLE n1);
JAVA_FLOAT java_lang_Math_ulp___float(JAVA_FLOAT n1);
JAVA_DOUBLE java_lang_Math_signum___double(JAVA_DOUBLE n1);
JAVA_FLOAT java_lang_Math_signum___float(JAVA_FLOAT n1);
JAVA_DOUBLE java_lang_Math_sinh___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_cosh___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_tanh___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_hypot___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_DOUBLE java_lang_Math_expm1___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_log1p___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_copySign___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_FLOAT java_lang_Math_copySign___float_float(JAVA_FLOAT n1, JAVA_FLOAT n2);
JAVA_INT java_lang_Math_getExponent___float(JAVA_FLOAT n1);
JAVA_INT java_lang_Math_getExponent___double(JAVA_DOUBLE n1);
JAVA_DOUBLE java_lang_Math_nextAfter___double_double(JAVA_DOUBLE n1, JAVA_DOUBLE n2);
JAVA_FLOAT java_lang_Math_nextAfter___float_double(JAVA_FLOAT n1, JAVA_DOUBLE n2);
JAVA_DOUBLE java_lang_Math_nextUp___double(JAVA_DOUBLE n1);
JAVA_FLOAT java_lang_Math_nextUp___float(JAVA_FLOAT n1);
JAVA_DOUBLE java_lang_Math_scalb___double_int(JAVA_DOUBLE n1, JAVA_INT n2);
JAVA_FLOAT java_lang_Math_scalb___float_int(JAVA_FLOAT n1, JAVA_INT n2);

#endif
