
#include "xmlvm.h"
#include "java_lang_System.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION

#include <sys/time.h>

//XMLVM_END_NATIVE_IMPLEMENTATION

void java_lang_System_initNativeLayer__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_initNativeLayer__]
    // Nothing to be done
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_System_currentTimeMillis__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_currentTimeMillis__]
    struct timeval now;
    gettimeofday(&now, NULL);

    JAVA_LONG msec = now.tv_sec * 1000;
    msec += now.tv_usec / 1000;

    return msec;
    //XMLVM_END_NATIVE
}

JAVA_LONG java_lang_System_nanoTime__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_nanoTime__]
    //TODO implement
    return 1L;
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_System_getPropertyList__()
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_getPropertyList__]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_OBJECT java_lang_System_getEncoding___int(JAVA_INT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_getEncoding___int]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

JAVA_INT java_lang_System_identityHashCode___java_lang_Object(JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_NATIVE[java_lang_System_identityHashCode___java_lang_Object]
    return (JAVA_INT) n1;
    //XMLVM_END_NATIVE
}

