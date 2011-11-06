
#include "xmlvm.h"
#include "sun_misc_Unsafe.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include "java_lang_IllegalArgumentException.h"
#include "java_lang_reflect_Field.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_LONG sun_misc_Unsafe_objectFieldOffset___java_lang_reflect_Field(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_objectFieldOffset___java_lang_reflect_Field]
    java_lang_reflect_Field* field=n1;
    if (field->fields.java_lang_reflect_Field.modifiers_ & java_lang_reflect_Modifier_STATIC) {
        XMLVM_THROW_WITH_CSTRING(java_lang_IllegalArgumentException, "static fields not supported");
        return -1;
    } else {
        return field->fields.java_lang_reflect_Field.offset_;
    }
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN sun_misc_Unsafe_compareAndSwapInt___java_lang_Object_long_int_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_INT n3, JAVA_INT n4)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_compareAndSwapInt___java_lang_Object_long_int_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN sun_misc_Unsafe_compareAndSwapLong___java_lang_Object_long_long_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_LONG n3, JAVA_LONG n4)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_compareAndSwapLong___java_lang_Object_long_long_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_BOOLEAN sun_misc_Unsafe_compareAndSwapObject___java_lang_Object_long_java_lang_Object_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_OBJECT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_compareAndSwapObject___java_lang_Object_long_java_lang_Object_java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT sun_misc_Unsafe_arrayBaseOffset___java_lang_Class(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_arrayBaseOffset___java_lang_Class]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT sun_misc_Unsafe_arrayIndexScale___java_lang_Class(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_arrayIndexScale___java_lang_Class]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void sun_misc_Unsafe_putIntVolatile___java_lang_Object_long_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_INT n3)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_putIntVolatile___java_lang_Object_long_int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT sun_misc_Unsafe_getIntVolatile___java_lang_Object_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_getIntVolatile___java_lang_Object_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void sun_misc_Unsafe_putLongVolatile___java_lang_Object_long_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_LONG n3)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_putLongVolatile___java_lang_Object_long_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG sun_misc_Unsafe_getLongVolatile___java_lang_Object_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_getLongVolatile___java_lang_Object_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void sun_misc_Unsafe_putObjectVolatile___java_lang_Object_long_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_putObjectVolatile___java_lang_Object_long_java_lang_Object]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT sun_misc_Unsafe_getObjectVolatile___java_lang_Object_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_getObjectVolatile___java_lang_Object_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void sun_misc_Unsafe_putLong___java_lang_Object_long_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2, JAVA_LONG n3)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_putLong___java_lang_Object_long_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_LONG sun_misc_Unsafe_getLong___java_lang_Object_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_getLong___java_lang_Object_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void sun_misc_Unsafe_unpark___java_lang_Thread(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_unpark___java_lang_Thread]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void sun_misc_Unsafe_park___boolean_long(JAVA_OBJECT me, JAVA_BOOLEAN n1, JAVA_LONG n2)
{
    //XMLVM_BEGIN_NATIVE[sun_misc_Unsafe_park___boolean_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}


void xmlvm_init_native_sun_misc_Unsafe()
{
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_objectFieldOffset___java_lang_reflect_Field
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_objectFieldOffset___java_lang_reflect_Field] = 
        (VTABLE_PTR) sun_misc_Unsafe_objectFieldOffset___java_lang_reflect_Field;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_compareAndSwapInt___java_lang_Object_long_int_int
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_compareAndSwapInt___java_lang_Object_long_int_int] = 
        (VTABLE_PTR) sun_misc_Unsafe_compareAndSwapInt___java_lang_Object_long_int_int;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_compareAndSwapLong___java_lang_Object_long_long_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_compareAndSwapLong___java_lang_Object_long_long_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_compareAndSwapLong___java_lang_Object_long_long_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_compareAndSwapObject___java_lang_Object_long_java_lang_Object_java_lang_Object
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_compareAndSwapObject___java_lang_Object_long_java_lang_Object_java_lang_Object] = 
        (VTABLE_PTR) sun_misc_Unsafe_compareAndSwapObject___java_lang_Object_long_java_lang_Object_java_lang_Object;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_arrayBaseOffset___java_lang_Class
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_arrayBaseOffset___java_lang_Class] = 
        (VTABLE_PTR) sun_misc_Unsafe_arrayBaseOffset___java_lang_Class;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_arrayIndexScale___java_lang_Class
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_arrayIndexScale___java_lang_Class] = 
        (VTABLE_PTR) sun_misc_Unsafe_arrayIndexScale___java_lang_Class;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_putIntVolatile___java_lang_Object_long_int
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_putIntVolatile___java_lang_Object_long_int] = 
        (VTABLE_PTR) sun_misc_Unsafe_putIntVolatile___java_lang_Object_long_int;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_getIntVolatile___java_lang_Object_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_getIntVolatile___java_lang_Object_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_getIntVolatile___java_lang_Object_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_putLongVolatile___java_lang_Object_long_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_putLongVolatile___java_lang_Object_long_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_putLongVolatile___java_lang_Object_long_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_getLongVolatile___java_lang_Object_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_getLongVolatile___java_lang_Object_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_getLongVolatile___java_lang_Object_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_putObjectVolatile___java_lang_Object_long_java_lang_Object
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_putObjectVolatile___java_lang_Object_long_java_lang_Object] = 
        (VTABLE_PTR) sun_misc_Unsafe_putObjectVolatile___java_lang_Object_long_java_lang_Object;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_getObjectVolatile___java_lang_Object_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_getObjectVolatile___java_lang_Object_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_getObjectVolatile___java_lang_Object_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_putLong___java_lang_Object_long_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_putLong___java_lang_Object_long_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_putLong___java_lang_Object_long_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_getLong___java_lang_Object_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_getLong___java_lang_Object_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_getLong___java_lang_Object_long;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_unpark___java_lang_Thread
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_unpark___java_lang_Thread] = 
        (VTABLE_PTR) sun_misc_Unsafe_unpark___java_lang_Thread;
#endif
#ifdef XMLVM_VTABLE_IDX_sun_misc_Unsafe_park___boolean_long
    __TIB_sun_misc_Unsafe.vtable[XMLVM_VTABLE_IDX_sun_misc_Unsafe_park___boolean_long] = 
        (VTABLE_PTR) sun_misc_Unsafe_park___boolean_long;
#endif
}
